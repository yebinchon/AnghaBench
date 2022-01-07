
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {size_t NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int LIST ;


 int FreeToken (TYPE_1__*) ;
 int InsertIntDistinct (int *,int ) ;
 int IsEmptyStr (char*) ;
 scalar_t__ IsNum (char*) ;
 int * NewIntList (int) ;
 TYPE_1__* ParseTokenWithoutNullStr (char*,char*) ;
 int ToInt (char*) ;

LIST *StrToIntList(char *str, bool sorted)
{
 LIST *o;
 TOKEN_LIST *t;

 o = NewIntList(sorted);

 t = ParseTokenWithoutNullStr(str, " ,/;\t");

 if (t != ((void*)0))
 {
  UINT i;

  for (i = 0;i < t->NumTokens;i++)
  {
   char *s = t->Token[i];

   if (IsEmptyStr(s) == 0)
   {
    if (IsNum(s))
    {
     InsertIntDistinct(o, ToInt(s));
    }
   }
  }

  FreeToken(t);
 }

 return o;
}
