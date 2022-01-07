
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int LcidList; int LangList; } ;
typedef int LIST ;
typedef TYPE_1__ LANGLIST ;


 int Free (TYPE_1__*) ;
 int FreeStrList (int ) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseIntList (int ) ;
 int ReleaseList (int *) ;

void FreeLangList(LIST *o)
{
 UINT i;

 if (o == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  LANGLIST *e = LIST_DATA(o, i);

  FreeStrList(e->LangList);
  ReleaseIntList(e->LcidList);

  Free(e);
 }

 ReleaseList(o);
}
