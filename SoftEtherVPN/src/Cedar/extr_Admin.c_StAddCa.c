
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int UINT ;
struct TYPE_17__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_16__ {scalar_t__ Bridge; } ;
struct TYPE_15__ {TYPE_11__* Cert; int HubName; } ;
struct TYPE_14__ {scalar_t__ ServerType; TYPE_3__* Cedar; } ;
struct TYPE_13__ {int is_compatible_bit; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_HUB_ADD_CA ;
typedef int HUB ;
typedef TYPE_3__ CEDAR ;
typedef TYPE_4__ ADMIN ;


 int ALog (TYPE_4__*,int *,char*) ;
 int AddRootCert (int *,TYPE_11__*) ;
 int CHECK_RIGHT ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_INVALID_PARAMETER ;
 int ERR_NOT_ENOUGH_RIGHT ;
 int ERR_NOT_FARM_CONTROLLER ;
 int ERR_NOT_RSA_1024 ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int * GetHub (TYPE_3__*,int ) ;
 scalar_t__ GetHubAdminOption (int *,char*) ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int LockHubList (TYPE_3__*) ;
 int ReleaseHub (int *) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int UnlockHubList (TYPE_3__*) ;

UINT StAddCa(ADMIN *a, RPC_HUB_ADD_CA *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;

 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_FARM_CONTROLLER;
 }

 if (c->Bridge)
 {
  return ERR_NOT_SUPPORTED;
 }

 if (t->Cert == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 if (t->Cert->is_compatible_bit == 0)
 {
  return ERR_NOT_RSA_1024;
 }

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

 IncrementServerConfigRevision(s);

 ALog(a, h, "LA_ADD_CA");

 AddRootCert(h, t->Cert);

 ReleaseHub(h);

 return ERR_NO_ERROR;
}
