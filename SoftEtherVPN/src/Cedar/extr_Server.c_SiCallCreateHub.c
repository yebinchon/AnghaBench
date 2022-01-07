
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_14__ {int Me; int HubList; } ;
struct TYPE_13__ {scalar_t__ Type; int Name; } ;
struct TYPE_12__ {int DynamicHub; int Name; TYPE_3__* FarmMember; } ;
typedef int SERVER ;
typedef int PACK ;
typedef TYPE_1__ HUB_LIST ;
typedef TYPE_2__ HUB ;
typedef TYPE_3__ FARM_MEMBER ;


 int Add (int ,TYPE_1__*) ;
 int Free (TYPE_1__*) ;
 int FreePack (int *) ;
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int * NewPack () ;
 int * SiCallTask (TYPE_3__*,int *,char*) ;
 int SiPackAddCreateHub (int *,TYPE_2__*) ;
 scalar_t__ StrCmpi (int ,int ) ;
 int StrCpy (int ,int,int ) ;
 int UnlockList (int ) ;
 TYPE_1__* ZeroMalloc (int) ;

void SiCallCreateHub(SERVER *s, FARM_MEMBER *f, HUB *h)
{
 PACK *p;
 HUB_LIST *hh;

 if (s == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 if (f->Me == 0)
 {
  p = NewPack();

  SiPackAddCreateHub(p, h);

  p = SiCallTask(f, p, "createhub");
  FreePack(p);
 }

 hh = ZeroMalloc(sizeof(HUB_LIST));
 hh->DynamicHub = (h->Type == HUB_TYPE_FARM_DYNAMIC ? 1 : 0);
 StrCpy(hh->Name, sizeof(hh->Name), h->Name);
 hh->FarmMember = f;

 LockList(f->HubList);
 {
  bool exists = 0;
  UINT i;
  for (i = 0;i < LIST_NUM(f->HubList);i++)
  {
   HUB_LIST *t = LIST_DATA(f->HubList, i);
   if (StrCmpi(t->Name, hh->Name) == 0)
   {
    exists = 1;
   }
  }
  if (exists == 0)
  {
   Add(f->HubList, hh);
  }
  else
  {
   Free(hh);
  }
 }
 UnlockList(f->HubList);
}
