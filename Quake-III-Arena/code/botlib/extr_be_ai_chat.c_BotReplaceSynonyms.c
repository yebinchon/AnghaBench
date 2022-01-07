
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned long context; TYPE_1__* firstsynonym; struct TYPE_6__* next; } ;
typedef TYPE_2__ bot_synonymlist_t ;
struct TYPE_7__ {int string; struct TYPE_7__* next; } ;
typedef TYPE_3__ bot_synonym_t ;
struct TYPE_5__ {int string; TYPE_3__* next; } ;


 int StringReplaceWords (char*,int ,int ) ;
 TYPE_2__* synonyms ;

void BotReplaceSynonyms(char *string, unsigned long int context)
{
 bot_synonymlist_t *syn;
 bot_synonym_t *synonym;

 for (syn = synonyms; syn; syn = syn->next)
 {
  if (!(syn->context & context)) continue;
  for (synonym = syn->firstsynonym->next; synonym; synonym = synonym->next)
  {
   StringReplaceWords(string, synonym->string, syn->firstsynonym->string);
  }
 }
}
