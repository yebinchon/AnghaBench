
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_15__ {TYPE_1__* Server; } ;
struct TYPE_14__ {int lock; int Name; int Option; } ;
struct TYPE_13__ {int HubName; } ;
struct TYPE_12__ {int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_ADMIN_OPTION ;
typedef TYPE_3__ HUB ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN ;


 int CHECK_RIGHT ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_NO_ERROR ;
 int FreeRpcAdminOption (TYPE_2__*) ;
 TYPE_3__* GetHub (int *,int ) ;
 int HubOptionStructToData (TYPE_2__*,int ,int ) ;
 int Lock (int ) ;
 int LockHubList (int *) ;
 int ReleaseHub (TYPE_3__*) ;
 int StrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;
 int Zero (TYPE_2__*,int) ;

UINT StGetHubExtOptions(ADMIN *a, RPC_ADMIN_OPTION *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;

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

 FreeRpcAdminOption(t);
 Zero(t, sizeof(RPC_ADMIN_OPTION));

 StrCpy(t->HubName, sizeof(t->HubName), h->Name);


 Lock(h->lock);
 {
  HubOptionStructToData(t, h->Option, h->Name);
 }
 Unlock(h->lock);

 ReleaseHub(h);

 return ERR_NO_ERROR;
}
