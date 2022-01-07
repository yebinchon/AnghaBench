
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {struct TYPE_4__* Name; struct TYPE_4__* UniStrValue; struct TYPE_4__* StrValue; } ;
typedef TYPE_1__ PARAM_VALUE ;
typedef int LIST ;


 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;

void FreeParamValueList(LIST *o)
{
 UINT i;

 if (o == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  PARAM_VALUE *v = LIST_DATA(o, i);

  Free(v->StrValue);
  Free(v->UniStrValue);
  Free(v->Name);
  Free(v);
 }

 ReleaseList(o);
}
