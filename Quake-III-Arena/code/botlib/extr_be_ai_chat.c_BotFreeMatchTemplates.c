
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int first; struct TYPE_4__* next; } ;
typedef TYPE_1__ bot_matchtemplate_t ;


 int BotFreeMatchPieces (int ) ;
 int FreeMemory (TYPE_1__*) ;

void BotFreeMatchTemplates(bot_matchtemplate_t *mt)
{
 bot_matchtemplate_t *nextmt;

 for (; mt; mt = nextmt)
 {
  nextmt = mt->next;
  BotFreeMatchPieces(mt->first);
  FreeMemory(mt);
 }
}
