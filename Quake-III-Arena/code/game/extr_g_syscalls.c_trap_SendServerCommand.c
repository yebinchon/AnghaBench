
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_SEND_SERVER_COMMAND ;
 int syscall (int ,int,char const*) ;

void trap_SendServerCommand( int clientNum, const char *text ) {
 syscall( G_SEND_SERVER_COMMAND, clientNum, text );
}
