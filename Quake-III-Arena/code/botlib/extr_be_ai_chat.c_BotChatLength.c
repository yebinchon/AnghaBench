
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chatmessage; } ;
typedef TYPE_1__ bot_chatstate_t ;


 TYPE_1__* BotChatStateFromHandle (int) ;
 int strlen (int ) ;

int BotChatLength(int chatstate)
{
 bot_chatstate_t *cs;

 cs = BotChatStateFromHandle(chatstate);
 if (!cs) return 0;
 return strlen(cs->chatmessage);
}
