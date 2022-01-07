
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int current_chain ;
typedef size_t UINT ;
struct TYPE_11__ {char* Chain; char* ConditionAndArgs; scalar_t__ LineNumber; } ;
struct TYPE_10__ {int EntryList; } ;
struct TYPE_9__ {size_t NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ IPTABLES_STATE ;
typedef TYPE_3__ IPTABLES_ENTRY ;


 int Add (int ,TYPE_3__*) ;
 int FreeToken (TYPE_1__*) ;
 int NewListFast (int *) ;
 TYPE_1__* ParseToken (char*,char*) ;
 scalar_t__ StartWith (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 scalar_t__ ToInt (char*) ;
 TYPE_1__* UnixExec (char*) ;
 int Zero (char*,int) ;
 void* ZeroMalloc (int) ;

IPTABLES_STATE *GetCurrentIpTables()
{
 IPTABLES_STATE *ret = ((void*)0);
 TOKEN_LIST *t = ((void*)0);





 if (t != ((void*)0))
 {
  UINT i;
  UINT tmp_num = 0;

  for (i = 0;i < t->NumTokens;i++)
  {
   char *line = t->Token[i];
   if (StartWith(line, "Chain INPUT") ||
    StartWith(line, "Chain FORWARD") ||
    StartWith(line, "Chain OUTPUT"))
   {
    tmp_num++;
   }
  }

  if (tmp_num >= 3)
  {
   char current_chain[64];
   UINT mode = 0;

   Zero(current_chain, sizeof(current_chain));

   for (i = 0;i < t->NumTokens;i++)
   {
    char *line = t->Token[i];

    if (StartWith(line, "Chain"))
    {
     TOKEN_LIST *t2 = ParseToken(line, " \t");
     if (t2 != ((void*)0))
     {
      if (t2->NumTokens >= 4)
      {
       StrCpy(current_chain, sizeof(current_chain), t2->Token[1]);
       mode = 1;

       if (ret == ((void*)0))
       {
        ret = ZeroMalloc(sizeof(IPTABLES_STATE));
        ret->EntryList = NewListFast(((void*)0));
       }

      }
      FreeToken(t2);
     }
    }

    if (mode == 1)
    {
     if (StartWith(line, "num"))
     {
      mode = 2;
     }
    }
    else if (mode == 2)
    {
     TOKEN_LIST *t2 = ParseToken(line, " \t");
     if (t2 != ((void*)0))
     {
      if (t2->NumTokens >= 6 && ToInt(t2->Token[0]) != 0)
      {
       IPTABLES_ENTRY *e = ZeroMalloc(sizeof(IPTABLES_ENTRY));

       StrCpy(e->Chain, sizeof(e->Chain), current_chain);
       e->LineNumber = ToInt(t2->Token[0]);
       StrCpy(e->ConditionAndArgs, sizeof(e->ConditionAndArgs), line);

       Add(ret->EntryList, e);
      }

      FreeToken(t2);
     }
    }
   }
  }

  FreeToken(t);
 }

 return ret;
}
