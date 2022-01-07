
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned long context; TYPE_1__* firstsynonym; struct TYPE_6__* next; } ;
typedef TYPE_2__ bot_synonymlist_t ;
struct TYPE_7__ {char* string; struct TYPE_7__* next; } ;
typedef TYPE_3__ bot_synonym_t ;
struct TYPE_5__ {char* string; TYPE_3__* next; } ;


 int Com_Memcpy (char*,char*,int) ;
 char* StringContainsWord (char*,char*,int ) ;
 int memmove (char*,char*,int) ;
 int qfalse ;
 int strlen (char*) ;
 TYPE_2__* synonyms ;

void BotReplaceReplySynonyms(char *string, unsigned long int context)
{
 char *str1, *str2, *replacement;
 bot_synonymlist_t *syn;
 bot_synonym_t *synonym;

 for (str1 = string; *str1; )
 {

  while(*str1 && *str1 <= ' ') str1++;
  if (!*str1) break;

  for (syn = synonyms; syn; syn = syn->next)
  {
   if (!(syn->context & context)) continue;
   for (synonym = syn->firstsynonym->next; synonym; synonym = synonym->next)
   {
    str2 = synonym->string;

    str2 = StringContainsWord(str1, synonym->string, qfalse);
    if (!str2 || str2 != str1) continue;

    replacement = syn->firstsynonym->string;

    str2 = StringContainsWord(str1, replacement, qfalse);
    if (str2 && str2 == str1) continue;

    memmove(str1 + strlen(replacement), str1+strlen(synonym->string),
       strlen(str1+strlen(synonym->string)) + 1);

    Com_Memcpy(str1, replacement, strlen(replacement));

    break;
   }

   if (synonym) break;
  }

  while(*str1 && *str1 > ' ') str1++;
  if (!*str1) break;
 }
}
