
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long context; float totalweight; TYPE_2__* firstsynonym; struct TYPE_4__* next; } ;
typedef TYPE_1__ bot_synonymlist_t ;
struct TYPE_5__ {int string; struct TYPE_5__* next; scalar_t__ weight; } ;
typedef TYPE_2__ bot_synonym_t ;


 int StringReplaceWords (char*,int ,int ) ;
 float random () ;
 TYPE_1__* synonyms ;

void BotReplaceWeightedSynonyms(char *string, unsigned long int context)
{
 bot_synonymlist_t *syn;
 bot_synonym_t *synonym, *replacement;
 float weight, curweight;

 for (syn = synonyms; syn; syn = syn->next)
 {
  if (!(syn->context & context)) continue;

  weight = random() * syn->totalweight;
  if (!weight) continue;
  curweight = 0;
  for (replacement = syn->firstsynonym; replacement; replacement = replacement->next)
  {
   curweight += replacement->weight;
   if (weight < curweight) break;
  }
  if (!replacement) continue;

  for (synonym = syn->firstsynonym; synonym; synonym = synonym->next)
  {
   if (synonym == replacement) continue;
   StringReplaceWords(string, synonym->string, replacement->string);
  }
 }
}
