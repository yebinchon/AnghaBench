
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCN (int ) ;
 int SYS_socket ;
 int SYS_socketcall ;
 int printf (char*,...) ;
 int syscall (int ,int,...) ;

int xsocket(int domain, int type, int protocol)
{
    return syscall(SCN(SYS_socket), domain, type, protocol);

}
