
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_9__ {int name; } ;
struct TYPE_8__ {int elements; } ;
struct TYPE_7__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ PACK ;
typedef TYPE_3__ ELEMENT ;


 int CopyStr (int ) ;
 TYPE_3__* LIST_DATA (int ,size_t) ;
 int LIST_NUM (int ) ;
 void* ZeroMalloc (int) ;

TOKEN_LIST *GetPackElementNames(PACK *p)
{
 TOKEN_LIST *ret;
 UINT i;

 if (p == ((void*)0))
 {
  return ((void*)0);
 }

 ret = ZeroMalloc(sizeof(TOKEN_LIST));

 ret->NumTokens = LIST_NUM(p->elements);
 ret->Token = ZeroMalloc(sizeof(char *) * ret->NumTokens);

 for (i = 0;i < ret->NumTokens;i++)
 {
  ELEMENT *e = LIST_DATA(p->elements, i);

  ret->Token[i] = CopyStr(e->name);
 }

 return ret;
}
