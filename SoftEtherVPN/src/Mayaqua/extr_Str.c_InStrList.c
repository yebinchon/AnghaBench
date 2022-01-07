
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {size_t NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;


 int FreeToken (TYPE_1__*) ;
 scalar_t__ InStrEx (char*,int ,int) ;
 TYPE_1__* ParseTokenWithoutNullStr (char*,char*) ;

bool InStrList(char *target_str, char *tokens, char *splitter, bool case_sensitive)
{
 TOKEN_LIST *t;
 bool ret = 0;
 UINT i;

 if (target_str == ((void*)0) || tokens == ((void*)0) || splitter == ((void*)0))
 {
  return 0;
 }

 t = ParseTokenWithoutNullStr(tokens, splitter);

 if (t != ((void*)0))
 {
  for (i = 0;i < t->NumTokens;i++)
  {
   if (InStrEx(target_str, t->Token[i], case_sensitive))
   {
    ret = 1;

   }

   if (ret)
   {
    break;
   }
  }

  FreeToken(t);
 }

 return ret;
}
