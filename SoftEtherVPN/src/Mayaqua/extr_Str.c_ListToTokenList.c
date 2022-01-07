
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {size_t NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int LIST ;


 int CopyStr (int ) ;
 int LIST_DATA (int *,size_t) ;
 size_t LIST_NUM (int *) ;
 void* ZeroMalloc (int) ;

TOKEN_LIST *ListToTokenList(LIST *o)
{
 UINT i;
 TOKEN_LIST *t;

 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 t = ZeroMalloc(sizeof(TOKEN_LIST));
 t->NumTokens = LIST_NUM(o);
 t->Token = ZeroMalloc(sizeof(char *) * t->NumTokens);
 for (i = 0;i < LIST_NUM(o);i++)
 {
  t->Token[i] = CopyStr(LIST_DATA(o, i));
 }

 return t;
}
