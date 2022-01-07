
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_CHAT_LENGTH ;
 int syscall (int ,int) ;

int trap_BotChatLength(int chatstate) {
 return syscall( BOTLIB_AI_CHAT_LENGTH, chatstate );
}
