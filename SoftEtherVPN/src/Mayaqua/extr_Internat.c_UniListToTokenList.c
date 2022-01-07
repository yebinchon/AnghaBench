
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {size_t NumTokens; int * Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef size_t UINT ;
typedef int LIST ;


 int LIST_DATA (int *,size_t) ;
 size_t LIST_NUM (int *) ;
 int UniCopyStr (int ) ;
 void* ZeroMalloc (int) ;

UNI_TOKEN_LIST *UniListToTokenList(LIST *o)
{
 UINT i;
 UNI_TOKEN_LIST *t;

 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 t = ZeroMalloc(sizeof(UNI_TOKEN_LIST));
 t->NumTokens = LIST_NUM(o);
 t->Token = ZeroMalloc(sizeof(wchar_t *) * t->NumTokens);
 for (i = 0;i < LIST_NUM(o);i++)
 {
  t->Token[i] = UniCopyStr(LIST_DATA(o, i));
 }

 return t;
}
