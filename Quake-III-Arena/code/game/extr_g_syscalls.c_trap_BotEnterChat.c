
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_ENTER_CHAT ;
 int syscall (int ,int,int,int) ;

void trap_BotEnterChat(int chatstate, int client, int sendto) {
 syscall( BOTLIB_AI_ENTER_CHAT, chatstate, client, sendto );
}
