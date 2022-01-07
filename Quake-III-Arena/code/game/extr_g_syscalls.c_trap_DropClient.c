
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_DROP_CLIENT ;
 int syscall (int ,int,char const*) ;

void trap_DropClient( int clientNum, const char *reason ) {
 syscall( G_DROP_CLIENT, clientNum, reason );
}
