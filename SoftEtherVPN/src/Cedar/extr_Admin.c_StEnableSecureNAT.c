
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_19__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_18__ {scalar_t__ Type; int CurrentVersion; } ;
struct TYPE_17__ {int HubName; } ;
struct TYPE_16__ {scalar_t__ ServerType; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_HUB ;
typedef TYPE_3__ HUB ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN ;


 int ALog (TYPE_4__*,TYPE_3__*,char*) ;
 int CHECK_RIGHT ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_NOT_ENOUGH_RIGHT ;
 int ERR_NOT_FARM_CONTROLLER ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int EnableSecureNAT (TYPE_3__*,int) ;
 TYPE_3__* GetHub (int *,int ) ;
 scalar_t__ GetHubAdminOption (TYPE_3__*,char*) ;
 int GetServerCapsBool (TYPE_1__*,char*) ;
 scalar_t__ HUB_TYPE_FARM_STATIC ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int LockHubList (int *) ;
 int ReleaseHub (TYPE_3__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SiHubUpdateProc (TYPE_3__*) ;
 int UnlockHubList (int *) ;

UINT StEnableSecureNAT(ADMIN *a, RPC_HUB *t)
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

 if (h->Type == HUB_TYPE_FARM_STATIC || GetServerCapsBool(s, "b_support_securenat") == 0)
 {
  ReleaseHub(h);
  return ERR_NOT_SUPPORTED;
 }
 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  ReleaseHub(h);
  return ERR_NOT_FARM_CONTROLLER;
 }

 if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_securenat") != 0)
 {
  ReleaseHub(h);
  return ERR_NOT_ENOUGH_RIGHT;
 }

 ALog(a, h, "LA_ENABLE_SNAT");

 EnableSecureNAT(h, 1);

 h->CurrentVersion++;
 SiHubUpdateProc(h);

 IncrementServerConfigRevision(s);

 ReleaseHub(h);

 return ERR_NO_ERROR;
}
