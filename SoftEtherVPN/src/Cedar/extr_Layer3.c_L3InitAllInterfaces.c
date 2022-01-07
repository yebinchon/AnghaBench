
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int HubName; int Hub; } ;
struct TYPE_7__ {int Cedar; int IfList; } ;
typedef int THREAD ;
typedef TYPE_1__ L3SW ;
typedef TYPE_2__ L3IF ;


 int GetHub (int ,int ) ;
 int L3IfThread ;
 int L3InitInterface (TYPE_2__*) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int * NewThread (int ,TYPE_2__*) ;
 int ReleaseThread (int *) ;
 int WaitThreadInit (int *) ;

void L3InitAllInterfaces(L3SW *s)
{
 UINT i;

 if (s == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(s->IfList);i++)
 {
  L3IF *f = LIST_DATA(s->IfList, i);
  THREAD *t;

  L3InitInterface(f);

  f->Hub = GetHub(s->Cedar, f->HubName);
  t = NewThread(L3IfThread, f);
  WaitThreadInit(t);
  ReleaseThread(t);
 }
}
