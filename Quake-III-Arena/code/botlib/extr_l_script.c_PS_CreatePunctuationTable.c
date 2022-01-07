
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__** punctuationtable; } ;
typedef TYPE_1__ script_t ;
struct TYPE_7__ {scalar_t__* p; struct TYPE_7__* next; } ;
typedef TYPE_2__ punctuation_t ;


 int Com_Memset (TYPE_2__**,int ,int) ;
 scalar_t__ GetMemory (int) ;
 scalar_t__ strlen (scalar_t__*) ;

void PS_CreatePunctuationTable(script_t *script, punctuation_t *punctuations)
{
 int i;
 punctuation_t *p, *lastp, *newp;


 if (!script->punctuationtable) script->punctuationtable = (punctuation_t **)
            GetMemory(256 * sizeof(punctuation_t *));
 Com_Memset(script->punctuationtable, 0, 256 * sizeof(punctuation_t *));

 for (i = 0; punctuations[i].p; i++)
 {
  newp = &punctuations[i];
  lastp = ((void*)0);

  for (p = script->punctuationtable[(unsigned int) newp->p[0]]; p; p = p->next)
  {
   if (strlen(p->p) < strlen(newp->p))
   {
    newp->next = p;
    if (lastp) lastp->next = newp;
    else script->punctuationtable[(unsigned int) newp->p[0]] = newp;
    break;
   }
   lastp = p;
  }
  if (!p)
  {
   newp->next = ((void*)0);
   if (lastp) lastp->next = newp;
   else script->punctuationtable[(unsigned int) newp->p[0]] = newp;
  }
 }
}
