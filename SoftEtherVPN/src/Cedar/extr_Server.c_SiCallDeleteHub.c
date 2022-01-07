
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_12__ {int Me; int HubList; } ;
struct TYPE_11__ {int Name; } ;
struct TYPE_10__ {int Name; } ;
typedef int SERVER ;
typedef int PACK ;
typedef TYPE_1__ HUB_LIST ;
typedef TYPE_2__ HUB ;
typedef TYPE_3__ FARM_MEMBER ;


 int Delete (int ,TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 int FreePack (int *) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int * NewPack () ;
 int PackAddStr (int *,char*,int ) ;
 int * SiCallTask (TYPE_3__*,int *,char*) ;
 scalar_t__ StrCmpi (int ,int ) ;
 int UnlockList (int ) ;

void SiCallDeleteHub(SERVER *s, FARM_MEMBER *f, HUB *h)
{
 PACK *p;
 UINT i;

 if (s == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 if (f->Me == 0)
 {
  p = NewPack();

  PackAddStr(p, "HubName", h->Name);

  p = SiCallTask(f, p, "deletehub");
  FreePack(p);
 }

 LockList(f->HubList);
 {
  for (i = 0;i < LIST_NUM(f->HubList);i++)
  {
   HUB_LIST *hh = LIST_DATA(f->HubList, i);
   if (StrCmpi(hh->Name, h->Name) == 0)
   {
    Free(hh);
    Delete(f->HubList, hh);
   }
  }
 }
 UnlockList(f->HubList);
}
