
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {scalar_t__ NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int LIST ;


 int Add (int *,void*) ;
 int FreeToken (TYPE_1__*) ;
 scalar_t__ IsInList (int *,void*) ;
 int IsNum (char*) ;
 scalar_t__ LIST_NUM (int *) ;
 scalar_t__ MAX_PUBLIC_PORT_NUM ;
 int * NewListFast (int *) ;
 TYPE_1__* ParseToken (char*,char*) ;
 int ReleaseList (int *) ;
 size_t ToInt (char*) ;

LIST *StrToPortList(char *str)
{
 LIST *o;
 TOKEN_LIST *t;
 UINT i;
 if (str == ((void*)0))
 {
  return ((void*)0);
 }


 t = ParseToken(str, ", ");
 if (t == ((void*)0))
 {
  return ((void*)0);
 }
 if (t->NumTokens == 0)
 {
  FreeToken(t);
  return ((void*)0);
 }

 o = NewListFast(((void*)0));

 for (i = 0;i < t->NumTokens;i++)
 {
  char *s = t->Token[i];
  UINT n;
  if (IsNum(s) == 0)
  {
   ReleaseList(o);
   FreeToken(t);
   return ((void*)0);
  }
  n = ToInt(s);
  if (n == 0 || n >= 65536)
  {
   ReleaseList(o);
   FreeToken(t);
   return ((void*)0);
  }
  if (IsInList(o, (void *)n))
  {
   ReleaseList(o);
   FreeToken(t);
   return ((void*)0);
  }
  Add(o, (void *)n);
 }

 FreeToken(t);

 if (LIST_NUM(o) > MAX_PUBLIC_PORT_NUM)
 {
  ReleaseList(o);
  return ((void*)0);
 }

 return o;
}
