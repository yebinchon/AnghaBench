
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCN (int ) ;
 int SYS_socket ;
 int SYS_socketcall ;
 int syscall (int ,int,...) ;

int xsocket(int domain, int type, int protocol)
{

    struct {
        int domain, type, protocol;
    } socketcall;
    socketcall.domain = domain;
    socketcall.type = type;
    socketcall.protocol = protocol;
    return syscall(SCN(SYS_socketcall), 1 , &socketcall);



}
