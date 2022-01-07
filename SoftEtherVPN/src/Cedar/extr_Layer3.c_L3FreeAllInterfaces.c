
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int * Session; int * Hub; } ;
struct TYPE_6__ {int IfList; } ;
typedef TYPE_1__ L3SW ;
typedef TYPE_2__ L3IF ;


 int L3FreeInterface (TYPE_2__*) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseHub (int *) ;
 int ReleaseSession (int *) ;

void L3FreeAllInterfaces(L3SW *s)
{
 UINT i;

 if (s == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(s->IfList);i++)
 {
  L3IF *f = LIST_DATA(s->IfList, i);

  ReleaseHub(f->Hub);
  f->Hub = ((void*)0);
  ReleaseSession(f->Session);
  f->Session = ((void*)0);

  L3FreeInterface(f);
 }
}
