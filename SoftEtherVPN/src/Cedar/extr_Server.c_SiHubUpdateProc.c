
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_16__ {int Me; } ;
struct TYPE_15__ {int LastVersion; int CurrentVersion; int Offline; int Type; int Name; TYPE_1__* Cedar; } ;
struct TYPE_14__ {scalar_t__ ServerType; int * FarmMemberList; } ;
struct TYPE_13__ {TYPE_2__* Server; } ;
typedef TYPE_2__ SERVER ;
typedef int LIST ;
typedef TYPE_3__ HUB ;
typedef TYPE_4__ FARM_MEMBER ;


 int Add (int *,TYPE_4__*) ;
 int Debug (char*,int ,int,int ,int) ;
 int IsInList (int *,TYPE_4__*) ;
 TYPE_4__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 int SiCallUpdateHub (TYPE_2__*,TYPE_4__*,TYPE_3__*) ;
 int SiHubOnlineProc (TYPE_3__*) ;
 int UnlockList (int *) ;

void SiHubUpdateProc(HUB *h)
{
 SERVER *s;
 UINT i;

 if (h == ((void*)0) || h->Cedar == ((void*)0) || h->Cedar->Server == ((void*)0) || h->Cedar->Server->ServerType != SERVER_TYPE_FARM_CONTROLLER)
 {
  return;
 }

 s = h->Cedar->Server;

 if (s->FarmMemberList == ((void*)0))
 {
  return;
 }

 if (h->LastVersion != h->CurrentVersion || h->CurrentVersion == 0)
 {
  LIST *fm_list;
  if (h->CurrentVersion == 0)
  {
   h->CurrentVersion = 1;
  }
  h->LastVersion = h->CurrentVersion;

  Debug("SiHubUpdateProc HUB=%s, Ver=%u, Type=%u, Offline=%u\n", h->Name, h->CurrentVersion,
   h->Type, h->Offline);

  fm_list = NewListFast(((void*)0));

  LockList(s->FarmMemberList);
  {
   while (1)
   {
    bool escape = 1;

    for (i = 0;i < LIST_NUM(s->FarmMemberList);i++)
    {
     FARM_MEMBER *f = LIST_DATA(s->FarmMemberList, i);

     if (IsInList(fm_list, f) == 0)
     {
      Add(fm_list, f);
      escape = 0;

      if (f->Me == 0)
      {
       SiCallUpdateHub(s, f, h);
      }

      break;
     }
    }

    if (escape)
    {
     break;
    }

    UnlockList(s->FarmMemberList);
    LockList(s->FarmMemberList);
   }
  }
  UnlockList(s->FarmMemberList);

  ReleaseList(fm_list);
 }

 if (h->Offline == 0)
 {
  SiHubOnlineProc(h);
 }
}
