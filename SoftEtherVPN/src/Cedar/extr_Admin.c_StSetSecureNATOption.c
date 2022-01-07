
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_14__ ;


typedef int push_routes_str_old ;
struct TYPE_28__ {int ApplyDhcpPushRoutes; scalar_t__ UseDhcp; scalar_t__ UseNat; int HubName; int DhcpPushRoutes; int Mask; int Ip; int MacAddress; } ;
typedef TYPE_5__ VH_OPTION ;
typedef int UINT ;
struct TYPE_31__ {int ServerAdmin; TYPE_6__* Server; } ;
struct TYPE_30__ {scalar_t__ Type; int CurrentVersion; int lock_online; TYPE_4__* SecureNAT; TYPE_14__* SecureNATOption; TYPE_2__* Cedar; } ;
struct TYPE_29__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_27__ {TYPE_3__* Nat; } ;
struct TYPE_26__ {int Virtual; } ;
struct TYPE_25__ {TYPE_1__* Server; } ;
struct TYPE_24__ {scalar_t__ ServerType; } ;
struct TYPE_23__ {int UseNat; int UseDhcp; char* DhcpPushRoutes; } ;
typedef TYPE_6__ SERVER ;
typedef TYPE_7__ HUB ;
typedef int CEDAR ;
typedef TYPE_8__ ADMIN ;


 int ALog (TYPE_8__*,TYPE_7__*,char*) ;
 int CHECK_RIGHT ;
 int Copy (TYPE_14__*,TYPE_5__*,int) ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_INVALID_PARAMETER ;
 int ERR_NOT_ENOUGH_RIGHT ;
 int ERR_NOT_FARM_CONTROLLER ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 TYPE_7__* GetHub (int *,int ) ;
 scalar_t__ GetHubAdminOption (TYPE_7__*,char*) ;
 int GetServerCapsBool (TYPE_6__*,char*) ;
 scalar_t__ HUB_TYPE_FARM_STATIC ;
 scalar_t__ HUB_TYPE_STANDALONE ;
 int IPToUINT (int *) ;
 int IncrementServerConfigRevision (TYPE_6__*) ;
 int IsHostIPAddress4 (int *) ;
 int IsSubnetMask4 (int *) ;
 scalar_t__ IsZero (int ,int) ;
 int Lock (int ) ;
 int LockHubList (int *) ;
 int MAX_DHCP_CLASSLESS_ROUTE_TABLE_STR_SIZE ;
 int NiClearUnsupportedVhOptionForDynamicHub (TYPE_14__*,int) ;
 int NormalizeClasslessRouteTableStr (int ,int,int ) ;
 int ReleaseHub (TYPE_7__*) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SetVirtualHostOption (int ,TYPE_5__*) ;
 int SiHubUpdateProc (TYPE_7__*) ;
 int StrCpy (char*,int,char*) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;

UINT StSetSecureNATOption(ADMIN *a, VH_OPTION *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 char push_routes_str_old[MAX_DHCP_CLASSLESS_ROUTE_TABLE_STR_SIZE];


 if (IsZero(t->MacAddress, sizeof(t->MacAddress)) ||
  IsHostIPAddress4(&t->Ip) == 0 ||
  IsSubnetMask4(&t->Mask) == 0)
 {
  return ERR_INVALID_PARAMETER;
 }
 if ((IPToUINT(&t->Ip) & (~(IPToUINT(&t->Mask)))) == 0)
 {
  return ERR_INVALID_PARAMETER;
 }
 if (GetServerCapsBool(s, "b_support_securenat") == 0)
 {
  t->ApplyDhcpPushRoutes = 0;
 }
 if (t->ApplyDhcpPushRoutes)
 {
  if (NormalizeClasslessRouteTableStr(t->DhcpPushRoutes, sizeof(t->DhcpPushRoutes), t->DhcpPushRoutes) == 0)
  {
   return ERR_INVALID_PARAMETER;
  }
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

 if (h->SecureNATOption->UseNat == 0 && t->UseNat)
 {
  if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_securenat_enablenat") != 0)
  {
   ReleaseHub(h);
   return ERR_NOT_ENOUGH_RIGHT;
  }
 }

 if (h->SecureNATOption->UseDhcp == 0 && t->UseDhcp)
 {
  if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_securenat_enabledhcp") != 0)
  {
   ReleaseHub(h);
   return ERR_NOT_ENOUGH_RIGHT;
  }
 }

 StrCpy(push_routes_str_old, sizeof(push_routes_str_old), h->SecureNATOption->DhcpPushRoutes);
 Copy(h->SecureNATOption, t, sizeof(VH_OPTION));
 if (t->ApplyDhcpPushRoutes == 0)
 {
  StrCpy(h->SecureNATOption->DhcpPushRoutes, sizeof(h->SecureNATOption->DhcpPushRoutes), push_routes_str_old);
 }

 if (h->Type != HUB_TYPE_STANDALONE && h->Cedar != ((void*)0) && h->Cedar->Server != ((void*)0) &&
  h->Cedar->Server->ServerType == SERVER_TYPE_FARM_CONTROLLER)
 {
  NiClearUnsupportedVhOptionForDynamicHub(h->SecureNATOption, 0);
 }

 Lock(h->lock_online);
 {
  if (h->SecureNAT != ((void*)0))
  {
   SetVirtualHostOption(h->SecureNAT->Nat->Virtual, t);
  }
 }
 Unlock(h->lock_online);

 ALog(a, h, "LA_SET_SNAT_OPTION");

 h->CurrentVersion++;
 SiHubUpdateProc(h);

 IncrementServerConfigRevision(s);

 ReleaseHub(h);

 return ERR_NO_ERROR;
}
