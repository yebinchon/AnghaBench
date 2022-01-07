
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_10__ {int Name; int Items; } ;
struct TYPE_9__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ FOLDER ;


 int CopyStr (int ) ;
 int FreeToken (TYPE_1__*) ;
 TYPE_2__* LIST_DATA (int ,size_t) ;
 int LIST_NUM (int ) ;
 TYPE_1__* UniqueToken (TYPE_1__*) ;
 void* ZeroMalloc (int) ;

TOKEN_LIST *CfgEnumItemToTokenList(FOLDER *f)
{
 TOKEN_LIST *t, *ret;
 UINT i;

 if (f == ((void*)0))
 {
  return ((void*)0);
 }

 t = ZeroMalloc(sizeof(TOKEN_LIST));
 t->NumTokens = LIST_NUM(f->Items);
 t->Token = ZeroMalloc(sizeof(char *) * t->NumTokens);

 for (i = 0;i < t->NumTokens;i++)
 {
  FOLDER *ff = LIST_DATA(f->Items, i);
  t->Token[i] = CopyStr(ff->Name);
 }

 ret = UniqueToken(t);
 FreeToken(t);

 return ret;
}
