
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int o ;
typedef scalar_t__ UINT ;
struct TYPE_30__ {TYPE_2__* Server; } ;
struct TYPE_29__ {int HubList; } ;
struct TYPE_28__ {scalar_t__ Type; int Offline; int CreatedTime; int SecurePassword; int HashedPassword; } ;
struct TYPE_27__ {int NoEnum; int MaxSession; } ;
struct TYPE_24__ {int NoEnum; int MaxSession; } ;
struct TYPE_26__ {scalar_t__ HubType; scalar_t__ Online; int SecurePassword; int HashedPassword; int HubName; int AdminPasswordPlainText; TYPE_1__ HubOption; } ;
struct TYPE_25__ {scalar_t__ ServerType; TYPE_6__* Cedar; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_CREATE_HUB ;
typedef TYPE_4__ HUB_OPTION ;
typedef TYPE_5__ HUB ;
typedef TYPE_6__ CEDAR ;
typedef TYPE_7__ ADMIN ;


 int ADMINISTRATOR_USERNAME ;
 int ALog (TYPE_7__*,int *,char*,int ) ;
 int AddHub (TYPE_6__*,TYPE_5__*) ;
 int Copy (int ,int ,int ) ;
 scalar_t__ ERR_HUB_ALREADY_EXISTS ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NOT_FARM_CONTROLLER ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_TOO_MANY_HUBS ;
 scalar_t__ EndWith (int ,char*) ;
 scalar_t__ GetServerCapsInt (TYPE_2__*,char*) ;
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ;
 scalar_t__ HUB_TYPE_FARM_STATIC ;
 scalar_t__ HUB_TYPE_STANDALONE ;
 int HashPassword (int ,int ,int ) ;
 int IncrementServerConfigRevision (TYPE_2__*) ;
 scalar_t__ IsEmptyStr (int ) ;
 int IsHub (TYPE_6__*,int ) ;
 int IsSafeStr (int ) ;
 scalar_t__ IsZero (int ,int) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 TYPE_5__* NewHub (TYPE_6__*,int ,TYPE_4__*) ;
 int ReleaseHub (TYPE_5__*) ;
 int SERVER_ADMIN_ONLY ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 int SHA1_SIZE ;
 int SetHubOffline (TYPE_5__*) ;
 int SetHubOnline (TYPE_5__*) ;
 int Sha0 (int ,int ,scalar_t__) ;
 int SiSetDefaultHubOption (TYPE_4__*) ;
 scalar_t__ StartWith (int ,char*) ;
 scalar_t__ StrLen (int ) ;
 int SystemTime64 () ;
 int Trim (int ) ;
 int UnlockList (int ) ;
 int Zero (TYPE_4__*,int) ;

UINT StCreateHub(ADMIN *a, RPC_CREATE_HUB *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 HUB_OPTION o;
 UINT current_hub_num;
 bool b;

 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_FARM_CONTROLLER;
 }



 if (IsEmptyStr(t->HubName) || IsSafeStr(t->HubName) == 0)
 {
  return ERR_INVALID_PARAMETER;
 }

 NO_SUPPORT_FOR_BRIDGE;

 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_FARM_CONTROLLER;
 }

 SERVER_ADMIN_ONLY;

 Trim(t->HubName);
 if (StrLen(t->HubName) == 0)
 {
  return ERR_INVALID_PARAMETER;
 }
 if (StartWith(t->HubName, ".") || EndWith(t->HubName, "."))
 {
  return ERR_INVALID_PARAMETER;
 }

 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_FARM_CONTROLLER;
 }

 if (s->ServerType == SERVER_TYPE_STANDALONE)
 {
  if (t->HubType != HUB_TYPE_STANDALONE)
  {
   return ERR_INVALID_PARAMETER;
  }
 }
 else if (t->HubType != HUB_TYPE_FARM_DYNAMIC && t->HubType != HUB_TYPE_FARM_STATIC)
 {
  return ERR_INVALID_PARAMETER;
 }


 Zero(&o, sizeof(o));
 o.MaxSession = t->HubOption.MaxSession;
 o.NoEnum = t->HubOption.NoEnum;


 SiSetDefaultHubOption(&o);

 LockList(c->HubList);
 {
  current_hub_num = LIST_NUM(c->HubList);
 }
 UnlockList(c->HubList);

 if (current_hub_num > GetServerCapsInt(a->Server, "i_max_hubs"))
 {
  return ERR_TOO_MANY_HUBS;
 }

 LockList(c->HubList);
 {
  b = IsHub(c, t->HubName);
 }
 UnlockList(c->HubList);

 if (b)
 {
  return ERR_HUB_ALREADY_EXISTS;
 }

 ALog(a, ((void*)0), "LA_CREATE_HUB", t->HubName);


 if ((IsZero(t->HashedPassword, sizeof(t->HashedPassword)) &&
  IsZero(t->SecurePassword, sizeof(t->SecurePassword))) ||
  StrLen(t->AdminPasswordPlainText) != 0)
 {
  Sha0(t->HashedPassword, t->AdminPasswordPlainText, StrLen(t->AdminPasswordPlainText));
  HashPassword(t->SecurePassword, ADMINISTRATOR_USERNAME, t->AdminPasswordPlainText);
 }

 h = NewHub(c, t->HubName, &o);
 Copy(h->HashedPassword, t->HashedPassword, SHA1_SIZE);
 Copy(h->SecurePassword, t->SecurePassword, SHA1_SIZE);

 h->Type = t->HubType;

 AddHub(c, h);

 if (t->Online)
 {
  h->Offline = 1;
  SetHubOnline(h);
 }
 else
 {
  h->Offline = 0;
  SetHubOffline(h);
 }

 h->CreatedTime = SystemTime64();

 ReleaseHub(h);

 IncrementServerConfigRevision(s);

 return ERR_NO_ERROR;
}
