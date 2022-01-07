
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {size_t NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;


 scalar_t__ StrCmpi (int ,char*) ;

bool IsInToken(TOKEN_LIST *t, char *str)
{
 UINT i;

 if (t == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 for (i = 0;i < t->NumTokens;i++)
 {
  if (StrCmpi(t->Token[i], str) == 0)
  {
   return 1;
  }
 }

 return 0;
}
