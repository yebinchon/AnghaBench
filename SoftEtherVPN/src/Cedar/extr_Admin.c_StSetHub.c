
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_30__ {int ServerAdmin; TYPE_3__* Rpc; TYPE_6__* Server; } ;
struct TYPE_29__ {scalar_t__ Type; int CurrentVersion; int lock; int SecurePassword; int HashedPassword; TYPE_4__* Option; } ;
struct TYPE_26__ {int NoEnum; int MaxSession; } ;
struct TYPE_28__ {scalar_t__ HubType; char* AdminPasswordPlainText; scalar_t__ Online; int * SecurePassword; int * HashedPassword; TYPE_5__ HubOption; int HubName; } ;
struct TYPE_27__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_25__ {int NoEnum; int MaxSession; } ;
struct TYPE_24__ {TYPE_2__* Sock; } ;
struct TYPE_22__ {int* addr; } ;
struct TYPE_23__ {TYPE_1__ RemoteIP; } ;
typedef TYPE_6__ SERVER ;
typedef TYPE_7__ RPC_CREATE_HUB ;
typedef TYPE_8__ HUB ;
typedef int CEDAR ;
typedef TYPE_9__ ADMIN ;


 int ADMINISTRATOR_USERNAME ;
 int ALog (TYPE_9__*,TYPE_8__*,char*) ;
 int CHECK_RIGHT ;
 scalar_t__ Cmp (int *,int *,int) ;
 int Copy (int ,int *,int) ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_INVALID_PARAMETER ;
 int ERR_NOT_ENOUGH_RIGHT ;
 int ERR_NOT_FARM_CONTROLLER ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int EnableSecureNAT (TYPE_8__*,int) ;
 TYPE_8__* GetHub (int *,int ) ;
 scalar_t__ GetHubAdminOption (TYPE_8__*,char*) ;
 scalar_t__ HUB_TYPE_FARM_STATIC ;
 scalar_t__ HUB_TYPE_STANDALONE ;
 int HashPassword (int *,int ,char*) ;
 int IncrementServerConfigRevision (TYPE_6__*) ;
 scalar_t__ IsEmptyStr (int ) ;
 int IsSafeStr (int ) ;
 int IsZero (int *,int) ;
 int Lock (int ) ;
 int LockHubList (int *) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (TYPE_8__*) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 int SHA1_SIZE ;
 int SetHubOffline (TYPE_8__*) ;
 int SetHubOnline (TYPE_8__*) ;
 int Sha0 (int *,char*,scalar_t__) ;
 int SiHubUpdateProc (TYPE_8__*) ;
 scalar_t__ StrLen (char*) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;

UINT StSetHub(ADMIN *a, RPC_CREATE_HUB *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT ret = ERR_NO_ERROR;

 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_FARM_CONTROLLER;
 }

 if (IsEmptyStr(t->HubName) || IsSafeStr(t->HubName) == 0)
 {
  return ERR_INVALID_PARAMETER;
 }


 CHECK_RIGHT;
 NO_SUPPORT_FOR_BRIDGE;

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

 if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
 {
  if (t->HubType == HUB_TYPE_STANDALONE)
  {
   return ERR_INVALID_PARAMETER;
  }
 }

 LockHubList(c);
 {
  h = GetHub(c, t->HubName);
 }
 UnlockHubList(c);

 if (h == ((void*)0))
 {
  return ERR_HUB_NOT_FOUND;
 }

 if (h->Type != t->HubType)
 {
  ReleaseHub(h);
  return ERR_NOT_SUPPORTED;
 }


 if (StrLen(t->AdminPasswordPlainText) != 0)
 {
  Sha0(t->HashedPassword, t->AdminPasswordPlainText, StrLen(t->AdminPasswordPlainText));
  HashPassword(t->SecurePassword, ADMINISTRATOR_USERNAME, t->AdminPasswordPlainText);
 }

 if (IsZero(t->HashedPassword, sizeof(t->HashedPassword)) == 0 &&
  IsZero(t->SecurePassword, sizeof(t->SecurePassword)) == 0)
 {
  if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_change_admin_password") != 0)
  {
   ReleaseHub(h);
   return ERR_NOT_ENOUGH_RIGHT;
  }
 }


 {
  UCHAR hash1[SHA1_SIZE], hash2[SHA1_SIZE];
  HashPassword(hash1, ADMINISTRATOR_USERNAME, "");
  Sha0(hash2, "", 0);

  if (Cmp(t->HashedPassword, hash2, SHA1_SIZE) == 0 || Cmp(t->SecurePassword, hash1, SHA1_SIZE) == 0)
  {
   if (a->ServerAdmin == 0 && a->Rpc->Sock->RemoteIP.addr[0] != 127)
   {

    ReleaseHub(h);
    return ERR_INVALID_PARAMETER;
   }
  }
 }

 Lock(h->lock);
 {
  if (a->ServerAdmin == 0 && h->Type != t->HubType)
  {
   ret = ERR_NOT_ENOUGH_RIGHT;
  }
  else
  {
   h->Type = t->HubType;
   h->Option->MaxSession = t->HubOption.MaxSession;
   h->Option->NoEnum = t->HubOption.NoEnum;
   if (IsZero(t->HashedPassword, sizeof(t->HashedPassword)) == 0 &&
    IsZero(t->SecurePassword, sizeof(t->SecurePassword)) == 0)
   {
    Copy(h->HashedPassword, t->HashedPassword, SHA1_SIZE);
    Copy(h->SecurePassword, t->SecurePassword, SHA1_SIZE);
   }
  }
 }
 Unlock(h->lock);

 if (t->Online)
 {
  if (a->ServerAdmin || GetHubAdminOption(h, "no_online") == 0)
  {
   SetHubOnline(h);
  }
 }
 else
 {
  if (a->ServerAdmin || GetHubAdminOption(h, "no_offline") == 0)
  {
   SetHubOffline(h);
  }
 }

 if (h->Type == HUB_TYPE_FARM_STATIC)
 {
  EnableSecureNAT(h, 0);
 }

 h->CurrentVersion++;
 SiHubUpdateProc(h);

 IncrementServerConfigRevision(s);

 ALog(a, h, "LA_SET_HUB");

 ReleaseHub(h);

 return ret;
}
