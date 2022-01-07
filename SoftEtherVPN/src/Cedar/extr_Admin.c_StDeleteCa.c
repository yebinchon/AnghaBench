
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int X ;
typedef int UINT ;
struct TYPE_18__ {int ServerAdmin; TYPE_2__* Server; } ;
struct TYPE_17__ {TYPE_1__* HubDb; } ;
struct TYPE_16__ {int Key; int HubName; } ;
struct TYPE_15__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_14__ {int RootCertList; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_HUB_DELETE_CA ;
typedef TYPE_4__ HUB ;
typedef int CEDAR ;
typedef TYPE_5__ ADMIN ;


 int ALog (TYPE_5__*,TYPE_4__*,char*) ;
 int CHECK_RIGHT ;
 int Delete (int ,int *) ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_NOT_ENOUGH_RIGHT ;
 int ERR_NOT_FARM_CONTROLLER ;
 int ERR_NO_ERROR ;
 int ERR_OBJECT_NOT_FOUND ;
 int FreeX (int *) ;
 TYPE_4__* GetHub (int *,int ) ;
 scalar_t__ GetHubAdminOption (TYPE_4__*,char*) ;
 int IncrementServerConfigRevision (TYPE_2__*) ;
 scalar_t__ IsInListKey (int ,int ) ;
 int * ListKeyToPointer (int ,int ) ;
 int LockHubList (int *) ;
 int LockList (int ) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (TYPE_4__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;

UINT StDeleteCa(ADMIN *a, RPC_HUB_DELETE_CA *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT ret = ERR_NO_ERROR;

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

 if (h == ((void*)0))
 {
  return ERR_HUB_NOT_FOUND;
 }

 if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_change_cert_list") != 0)
 {
  ReleaseHub(h);
  return ERR_NOT_ENOUGH_RIGHT;
 }

 LockList(h->HubDb->RootCertList);
 {
  if (IsInListKey(h->HubDb->RootCertList, t->Key))
  {
   X *x = ListKeyToPointer(h->HubDb->RootCertList, t->Key);
   Delete(h->HubDb->RootCertList, x);
   FreeX(x);

   ALog(a, h, "LA_DELETE_CA");

   IncrementServerConfigRevision(s);
  }
  else
  {
   ret = ERR_OBJECT_NOT_FOUND;
  }
 }
 UnlockList(h->HubDb->RootCertList);

 ReleaseHub(h);

 return ret;
}
