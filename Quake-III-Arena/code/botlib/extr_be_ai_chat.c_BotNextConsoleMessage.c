
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int handle; int * prev; int next; } ;
typedef TYPE_1__ bot_consolemessage_t ;
struct TYPE_7__ {scalar_t__ firstmessage; } ;
typedef TYPE_2__ bot_chatstate_t ;


 TYPE_2__* BotChatStateFromHandle (int) ;
 int Com_Memcpy (TYPE_1__*,scalar_t__,int) ;

int BotNextConsoleMessage(int chatstate, bot_consolemessage_t *cm)
{
 bot_chatstate_t *cs;

 cs = BotChatStateFromHandle(chatstate);
 if (!cs) return 0;
 if (cs->firstmessage)
 {
  Com_Memcpy(cm, cs->firstmessage, sizeof(bot_consolemessage_t));
  cm->next = cm->prev = ((void*)0);
  return cm->handle;
 }
 return 0;
}
