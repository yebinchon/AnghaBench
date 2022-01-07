
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* firstchatmessage; int name; struct TYPE_6__* next; } ;
typedef TYPE_1__ bot_chattype_t ;
struct TYPE_7__ {TYPE_4__* chat; } ;
typedef TYPE_2__ bot_chatstate_t ;
struct TYPE_8__ {float time; char* chatmessage; struct TYPE_8__* next; } ;
typedef TYPE_3__ bot_chatmessage_t ;
struct TYPE_9__ {TYPE_1__* types; } ;
typedef TYPE_4__ bot_chat_t ;


 float AAS_Time () ;
 float CHATMESSAGE_RECENTTIME ;
 int Q_stricmp (int ,char*) ;
 int random () ;

char *BotChooseInitialChatMessage(bot_chatstate_t *cs, char *type)
{
 int n, numchatmessages;
 float besttime;
 bot_chattype_t *t;
 bot_chatmessage_t *m, *bestchatmessage;
 bot_chat_t *chat;

 chat = cs->chat;
 for (t = chat->types; t; t = t->next)
 {
  if (!Q_stricmp(t->name, type))
  {
   numchatmessages = 0;
   for (m = t->firstchatmessage; m; m = m->next)
   {
    if (m->time > AAS_Time()) continue;
    numchatmessages++;
   }

   if (numchatmessages <= 0)
   {
    besttime = 0;
    bestchatmessage = ((void*)0);
    for (m = t->firstchatmessage; m; m = m->next)
    {
     if (!besttime || m->time < besttime)
     {
      bestchatmessage = m;
      besttime = m->time;
     }
    }
    if (bestchatmessage) return bestchatmessage->chatmessage;
   }
   else
   {
    n = random() * numchatmessages;
    for (m = t->firstchatmessage; m; m = m->next)
    {
     if (m->time > AAS_Time()) continue;
     if (--n < 0)
     {
      m->time = AAS_Time() + CHATMESSAGE_RECENTTIME;
      return m->chatmessage;
     }
    }
   }
   return ((void*)0);
  }
 }
 return ((void*)0);
}
