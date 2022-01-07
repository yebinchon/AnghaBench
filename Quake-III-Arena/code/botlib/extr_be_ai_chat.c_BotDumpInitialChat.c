
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* firstchatmessage; int numchatmessages; int name; struct TYPE_5__* next; } ;
typedef TYPE_1__ bot_chattype_t ;
struct TYPE_6__ {int chatmessage; struct TYPE_6__* next; } ;
typedef TYPE_2__ bot_chatmessage_t ;
struct TYPE_7__ {TYPE_1__* types; } ;
typedef TYPE_3__ bot_chat_t ;


 int Log_Write (char*,...) ;

void BotDumpInitialChat(bot_chat_t *chat)
{
 bot_chattype_t *t;
 bot_chatmessage_t *m;

 Log_Write("{");
 for (t = chat->types; t; t = t->next)
 {
  Log_Write(" type \"%s\"", t->name);
  Log_Write(" {");
  Log_Write("  numchatmessages = %d", t->numchatmessages);
  for (m = t->firstchatmessage; m; m = m->next)
  {
   Log_Write("  \"%s\"", m->chatmessage);
  }
  Log_Write(" }");
 }
 Log_Write("}");
}
