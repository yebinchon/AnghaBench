
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int lock; int TableList; int IfList; } ;
typedef TYPE_1__ L3TABLE ;
typedef TYPE_1__ L3SW ;
typedef TYPE_1__ L3IF ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseList (int ) ;

void CleanupL3Sw(L3SW *s)
{
 UINT i;

 if (s == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(s->IfList);i++)
 {
  L3IF *f = LIST_DATA(s->IfList, i);
  Free(f);
 }
 ReleaseList(s->IfList);

 for (i = 0;i < LIST_NUM(s->TableList);i++)
 {
  L3TABLE *t = LIST_DATA(s->TableList, i);
  Free(t);
 }
 ReleaseList(s->TableList);

 DeleteLock(s->lock);
 Free(s);
}
