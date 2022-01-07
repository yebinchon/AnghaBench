
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_SET_CHAT_GENDER ;
 int syscall (int ,int,int) ;

void trap_BotSetChatGender(int chatstate, int gender) {
 syscall( BOTLIB_AI_SET_CHAT_GENDER, chatstate, gender );
}
