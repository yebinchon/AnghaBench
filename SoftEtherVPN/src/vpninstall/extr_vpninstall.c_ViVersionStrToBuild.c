
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;


 int FreeToken (TYPE_1__*) ;
 TYPE_1__* ParseToken (char*,char*) ;
 scalar_t__ ToInt (int ) ;

UINT ViVersionStrToBuild(char *str)
{
 TOKEN_LIST *t;
 UINT ret;

 if (str == ((void*)0))
 {
  return 0;
 }

 t = ParseToken(str, ".");
 if (t == ((void*)0))
 {
  return 0;
 }

 ret = 0;

 if (t->NumTokens == 3)
 {
  ret = ToInt(t->Token[2]);
 }

 FreeToken(t);

 return ret;
}
