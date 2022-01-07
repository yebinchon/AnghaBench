
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gender; } ;
typedef TYPE_1__ bot_chatstate_t ;


 TYPE_1__* BotChatStateFromHandle (int) ;

 int CHAT_GENDERLESS ;


void BotSetChatGender(int chatstate, int gender)
{
 bot_chatstate_t *cs;

 cs = BotChatStateFromHandle(chatstate);
 if (!cs) return;
 switch(gender)
 {
  case 129: cs->gender = 129; break;
  case 128: cs->gender = 128; break;
  default: cs->gender = CHAT_GENDERLESS; break;
 }
}
