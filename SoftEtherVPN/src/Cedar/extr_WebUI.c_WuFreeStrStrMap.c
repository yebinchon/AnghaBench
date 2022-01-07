
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {struct TYPE_3__* Value; struct TYPE_3__* Name; } ;
typedef TYPE_1__ STRMAP_ENTRY ;
typedef int LIST ;


 int Free (TYPE_1__*) ;
 scalar_t__ LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;

__attribute__((used)) static void WuFreeStrStrMap(LIST *params)
{
 UINT i;

 if(params == ((void*)0))
 {
  return;
 }

 for(i=0; i<LIST_NUM(params); i++)
 {
  STRMAP_ENTRY *e = (STRMAP_ENTRY*)LIST_DATA(params, i);
  Free(e->Name);
  Free(e->Value);
  Free(e);
 }
 ReleaseList(params);
}
