
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chatmessage; } ;
typedef TYPE_1__ bot_chatstate_t ;


 TYPE_1__* BotChatStateFromHandle (int) ;
 int BotRemoveTildes (int ) ;
 int strcpy (int ,char*) ;
 int strncpy (char*,int ,int) ;

void BotGetChatMessage(int chatstate, char *buf, int size)
{
 bot_chatstate_t *cs;

 cs = BotChatStateFromHandle(chatstate);
 if (!cs) return;

 BotRemoveTildes(cs->chatmessage);
 strncpy(buf, cs->chatmessage, size-1);
 buf[size-1] = '\0';

 strcpy(cs->chatmessage, "");
}
