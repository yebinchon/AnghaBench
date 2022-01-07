
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_NUM_CONSOLE_MESSAGE ;
 int syscall (int ,int) ;

int trap_BotNumConsoleMessages(int chatstate) {
 return syscall( BOTLIB_AI_NUM_CONSOLE_MESSAGE, chatstate );
}
