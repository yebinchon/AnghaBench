
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_QUEUE_CONSOLE_MESSAGE ;
 int syscall (int ,int,int,char*) ;

void trap_BotQueueConsoleMessage(int chatstate, int type, char *message) {
 syscall( BOTLIB_AI_QUEUE_CONSOLE_MESSAGE, chatstate, type, message );
}
