
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;


 int FreeToken (TYPE_1__*) ;
 int IsEmptyStr (char*) ;
 TYPE_1__* ParseToken (char*,char*) ;
 int ToInt (int ) ;

bool ParsePortRange(char *str, UINT *start, UINT *end)
{
 UINT a = 0, b = 0;
 TOKEN_LIST *t;

 if (str == ((void*)0))
 {
  return 0;
 }

 if (IsEmptyStr(str) == 0)
 {

  t = ParseToken(str, "\t -");

  if (t->NumTokens == 1)
  {
   a = b = ToInt(t->Token[0]);
  }
  else if (t->NumTokens == 2)
  {
   a = ToInt(t->Token[0]);
   b = ToInt(t->Token[1]);
  }

  FreeToken(t);

  if (a > b)
  {
   return 0;
  }

  if (a >= 65536 || b >= 65536)
  {
   return 0;
  }

  if (a == 0 && b != 0)
  {
   return 0;
  }
 }

 if (start != ((void*)0))
 {
  *start = a;
 }
 if (end != ((void*)0))
 {
  *end = b;
 }

 return 1;
}
