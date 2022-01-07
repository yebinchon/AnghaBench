
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_17__ {TYPE_3__* Server; } ;
struct TYPE_16__ {int lock; int Type; TYPE_2__* Option; scalar_t__ Offline; int Name; } ;
struct TYPE_12__ {int NoEnum; int MaxSession; } ;
struct TYPE_15__ {int Online; int HubType; TYPE_1__ HubOption; int HubName; } ;
struct TYPE_14__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_13__ {int NoEnum; int MaxSession; } ;
typedef TYPE_3__ SERVER ;
typedef TYPE_4__ RPC_CREATE_HUB ;
typedef TYPE_5__ HUB ;
typedef int CEDAR ;
typedef TYPE_6__ ADMIN ;


 int CHECK_RIGHT ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_INVALID_PARAMETER ;
 int ERR_NOT_FARM_CONTROLLER ;
 int ERR_NO_ERROR ;
 TYPE_5__* GetHub (int *,int ) ;
 scalar_t__ IsEmptyStr (int ) ;
 int IsSafeStr (int ) ;
 int Lock (int ) ;
 int LockHubList (int *) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (TYPE_5__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int StrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;
 int Zero (TYPE_4__*,int) ;

UINT StGetHub(ADMIN *a, RPC_CREATE_HUB *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;
 HUB *h;

 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_FARM_CONTROLLER;
 }

 if (IsEmptyStr(t->HubName) || IsSafeStr(t->HubName) == 0)
 {
  return ERR_INVALID_PARAMETER;
 }

 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_FARM_CONTROLLER;
 }

 NO_SUPPORT_FOR_BRIDGE;
 CHECK_RIGHT;

 LockHubList(c);
 {
  h = GetHub(c, t->HubName);
 }
 UnlockHubList(c);

 Zero(t, sizeof(RPC_CREATE_HUB));

 if (h == ((void*)0))
 {
  return ERR_HUB_NOT_FOUND;
 }

 Lock(h->lock);
 {
  StrCpy(t->HubName, sizeof(t->HubName), h->Name);
  t->Online = h->Offline ? 0 : 1;
  t->HubOption.MaxSession = h->Option->MaxSession;
  t->HubOption.NoEnum = h->Option->NoEnum;
  t->HubType = h->Type;
 }
 Unlock(h->lock);

 ReleaseHub(h);

 return ret;
}
