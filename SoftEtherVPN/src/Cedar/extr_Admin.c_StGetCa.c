
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int hubname ;
typedef int X ;
typedef int UINT ;
struct TYPE_16__ {TYPE_2__* Server; } ;
struct TYPE_15__ {TYPE_1__* HubDb; } ;
struct TYPE_14__ {char* HubName; int Cert; int Key; } ;
struct TYPE_13__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_12__ {int RootCertList; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_HUB_GET_CA ;
typedef TYPE_4__ HUB ;
typedef int CEDAR ;
typedef TYPE_5__ ADMIN ;


 int CHECK_RIGHT ;
 int CloneX (int *) ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_NOT_FARM_CONTROLLER ;
 int ERR_NO_ERROR ;
 int ERR_OBJECT_NOT_FOUND ;
 int FreeRpcHubGetCa (TYPE_3__*) ;
 TYPE_4__* GetHub (int *,char*) ;
 scalar_t__ IsInListKey (int ,int ) ;
 int * ListKeyToPointer (int ,int ) ;
 int LockHubList (int *) ;
 int LockList (int ) ;
 int MAX_HUBNAME_LEN ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (TYPE_4__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int StrCpy (char*,int,char*) ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;
 int Zero (TYPE_3__*,int) ;

UINT StGetCa(ADMIN *a, RPC_HUB_GET_CA *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT ret = ERR_NO_ERROR;
 char hubname[MAX_HUBNAME_LEN + 1];
 UINT key;

 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_FARM_CONTROLLER;
 }

 NO_SUPPORT_FOR_BRIDGE;

 StrCpy(hubname, sizeof(hubname), t->HubName);
 key = t->Key;

 FreeRpcHubGetCa(t);
 Zero(t, sizeof(RPC_HUB_GET_CA));
 t->Key = key;
 StrCpy(t->HubName, sizeof(t->HubName), hubname);

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

 LockList(h->HubDb->RootCertList);
 {
  if (IsInListKey(h->HubDb->RootCertList, key))
  {
   X *x = ListKeyToPointer(h->HubDb->RootCertList, key);

   t->Cert = CloneX(x);
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
