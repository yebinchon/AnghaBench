
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {size_t NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;


 int CopyStr (int ) ;
 scalar_t__ StrCmpi (int ,int ) ;
 void* ZeroMalloc (int) ;

TOKEN_LIST *UniqueToken(TOKEN_LIST *t)
{
 UINT i, num, j, n;
 TOKEN_LIST *ret;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 num = 0;
 for (i = 0;i < t->NumTokens;i++)
 {
  bool exists = 0;

  for (j = 0;j < i;j++)
  {
   if (StrCmpi(t->Token[j], t->Token[i]) == 0)
   {
    exists = 1;
    break;
   }
  }

  if (exists == 0)
  {
   num++;
  }
 }

 ret = ZeroMalloc(sizeof(TOKEN_LIST));
 ret->Token = ZeroMalloc(sizeof(char *) * num);
 ret->NumTokens = num;

 n = 0;

 for (i = 0;i < t->NumTokens;i++)
 {
  bool exists = 0;

  for (j = 0;j < i;j++)
  {
   if (StrCmpi(t->Token[j], t->Token[i]) == 0)
   {
    exists = 1;
    break;
   }
  }

  if (exists == 0)
  {
   ret->Token[n++] = CopyStr(t->Token[i]);
  }
 }

 return ret;
}
