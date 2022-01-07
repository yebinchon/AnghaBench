
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_14__ {int * HubList; } ;
struct TYPE_13__ {scalar_t__ Type; int Name; TYPE_1__* Cedar; } ;
struct TYPE_12__ {int Name; } ;
struct TYPE_11__ {scalar_t__ ServerType; int * FarmMemberList; } ;
struct TYPE_10__ {TYPE_2__* Server; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ HUB_LIST ;
typedef TYPE_4__ HUB ;
typedef TYPE_5__ FARM_MEMBER ;


 scalar_t__ HUB_TYPE_FARM_STATIC ;
 void* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 int SiCallCreateHub (TYPE_2__*,TYPE_5__*,TYPE_4__*) ;
 scalar_t__ StrCmpi (int ,int ) ;
 int UnlockList (int *) ;

void SiHubOnlineProc(HUB *h)
{
 SERVER *s;
 UINT i;

 if (h == ((void*)0) || h->Cedar->Server == ((void*)0) || h->Cedar->Server->ServerType != SERVER_TYPE_FARM_CONTROLLER)
 {

  return;
 }

 s = h->Cedar->Server;

 if (s->FarmMemberList == ((void*)0))
 {
  return;
 }

 LockList(s->FarmMemberList);
 {
  if (h->Type == HUB_TYPE_FARM_STATIC)
  {


   for (i = 0;i < LIST_NUM(s->FarmMemberList);i++)
   {
    UINT j;
    bool exists = 0;
    FARM_MEMBER *f = LIST_DATA(s->FarmMemberList, i);

    LockList(f->HubList);
    {
     for (j = 0;j < LIST_NUM(f->HubList);j++)
     {
      HUB_LIST *hh = LIST_DATA(f->HubList, j);
      if (StrCmpi(hh->Name, h->Name) == 0)
      {
       exists = 1;
      }
     }
    }
    UnlockList(f->HubList);

    if (exists == 0)
    {
     SiCallCreateHub(s, f, h);
    }
   }
  }
 }
 UnlockList(s->FarmMemberList);
}
