
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_GET_CONSOLE_MESSAGE ;
 int syscall (int ,int,char*,int) ;

int trap_BotGetServerCommand(int clientNum, char *message, int size) {
 return syscall( BOTLIB_GET_CONSOLE_MESSAGE, clientNum, message, size );
}
