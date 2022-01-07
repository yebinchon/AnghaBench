
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* firstchatmessage; struct TYPE_6__* string; scalar_t__ match; struct TYPE_6__* keys; } ;
typedef TYPE_1__ bot_replychatkey_t ;
typedef TYPE_1__ bot_replychat_t ;
typedef TYPE_1__ bot_chatmessage_t ;


 int BotFreeMatchPieces (scalar_t__) ;
 int FreeMemory (TYPE_1__*) ;

void BotFreeReplyChat(bot_replychat_t *replychat)
{
 bot_replychat_t *rp, *nextrp;
 bot_replychatkey_t *key, *nextkey;
 bot_chatmessage_t *cm, *nextcm;

 for (rp = replychat; rp; rp = nextrp)
 {
  nextrp = rp->next;
  for (key = rp->keys; key; key = nextkey)
  {
   nextkey = key->next;
   if (key->match) BotFreeMatchPieces(key->match);
   if (key->string) FreeMemory(key->string);
   FreeMemory(key);
  }
  for (cm = rp->firstchatmessage; cm; cm = nextcm)
  {
   nextcm = cm->next;
   FreeMemory(cm);
  }
  FreeMemory(rp);
 }
}
