HEADERS       = client.h \
                bonjourservicebrowser.h \
                bonjourserviceresolver.h
SOURCES       = client.cpp \
                main.cpp \
                bonjourservicebrowser.cpp \
                bonjourserviceresolver.cpp
QT           += network
QT           += widgets

!mac:x11:LIBS+=-ldns_sd
win32:LIBS+=-L"C:/Program Files/Bonjour SDK/Lib/Win32" -ldnssd
LIBPATH=C:/Temp/mDNSResponder-107.6/mDNSWindows/DLL/Debug
INCLUDEPATH += c:/Temp/mDNSResponder-107.6/mDNSShared
INCLUDEPATH += "C:/Program Files/Bonjour SDK/Include"
HEADERS += dns_sd.h
