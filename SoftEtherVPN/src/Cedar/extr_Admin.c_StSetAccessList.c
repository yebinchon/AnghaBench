
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_24__ {scalar_t__ Jitter; scalar_t__ Loss; scalar_t__ Delay; int DestUsername; int SrcUsername; int RedirectUrl; scalar_t__ IsIPv6; } ;
struct TYPE_23__ {int ServerAdmin; int ClientBuild; TYPE_1__* Server; } ;
struct TYPE_22__ {int AccessList; int CurrentVersion; } ;
struct TYPE_21__ {int NumAccess; TYPE_5__* Accesses; int HubName; } ;
struct TYPE_20__ {scalar_t__ ServerType; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_ENUM_ACCESS_LIST ;
typedef TYPE_3__ HUB ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN ;
typedef TYPE_5__ ACCESS ;


 int ACCESS_LIST_EXCLUDED_PREFIX ;
 int ACCESS_LIST_INCLUDED_PREFIX ;
 int ALog (TYPE_4__*,TYPE_3__*,char*,int) ;
 int AddAccessListEx (TYPE_3__*,TYPE_5__*,int,int) ;
 int CHECK_RIGHT ;
 int ClearStr (int ,int) ;
 int DeleteAll (int ) ;
 scalar_t__ ERR_HUB_NOT_FOUND ;
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ;
 scalar_t__ ERR_NOT_SUPPORTED ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_TOO_MANY_ACCESS_LIST ;
 scalar_t__ ERR_VERSION_INVALID ;
 int Free (TYPE_5__*) ;
 TYPE_3__* GetHub (int *,int ) ;
 int GetHubAdminOption (TYPE_3__*,char*) ;
 int GetServerCapsInt (TYPE_1__*,char*) ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int IsEmptyStr (int ) ;
 TYPE_5__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockHubList (int *) ;
 int LockList (int ) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (TYPE_3__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SiHubUpdateProc (TYPE_3__*) ;
 int Sort (int ) ;
 scalar_t__ StartWith (int ,int ) ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;

UINT StSetAccessList(ADMIN *a, RPC_ENUM_ACCESS_LIST *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT i;
 bool no_jitter = 0;
 bool no_include = 0;
 UINT ret = ERR_NO_ERROR;


 NO_SUPPORT_FOR_BRIDGE;
 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_SUPPORTED;
 }

 CHECK_RIGHT;

 if (t->NumAccess > GetServerCapsInt(a->Server, "i_max_access_lists"))
 {
  return ERR_TOO_MANY_ACCESS_LIST;
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

 no_jitter = GetHubAdminOption(h, "no_delay_jitter_packet_loss");
 no_include = GetHubAdminOption(h, "no_access_list_include_file");

 if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_change_access_list") != 0)
 {
  ReleaseHub(h);
  return ERR_NOT_ENOUGH_RIGHT;
 }

 if (a->ServerAdmin == 0 && GetHubAdminOption(h, "max_accesslists") != 0 &&
  t->NumAccess > GetHubAdminOption(h, "max_accesslists"))
 {
  ReleaseHub(h);
  return ERR_TOO_MANY_ACCESS_LIST;
 }

 LockList(h->AccessList);
 {
  UINT i;

  if (a->ClientBuild != 0)
  {

   if (a->ClientBuild < 6560)
   {
    for (i = 0;i < LIST_NUM(h->AccessList);i++)
    {
     ACCESS *access = LIST_DATA(h->AccessList, i);
     if (access->IsIPv6 ||
      access->Jitter != 0 || access->Loss != 0 || access->Delay != 0)
     {
      ret = ERR_VERSION_INVALID;
      break;
     }
    }
   }

   if (a->ClientBuild < 8234)
   {
    for (i = 0;i < LIST_NUM(h->AccessList);i++)
    {
     ACCESS *access = LIST_DATA(h->AccessList, i);

     if (IsEmptyStr(access->RedirectUrl) == 0)
     {
      ret = ERR_VERSION_INVALID;
      break;
     }
    }
   }
  }

  if (ret == ERR_NO_ERROR)
  {

   for (i = 0;i < LIST_NUM(h->AccessList);i++)
   {
    ACCESS *access = LIST_DATA(h->AccessList, i);
    Free(access);
   }

   DeleteAll(h->AccessList);
  }
 }

 if (ret == ERR_NO_ERROR)
 {
  ALog(a, h, "LA_SET_ACCESS_LIST", t->NumAccess);


  for (i = 0;i < t->NumAccess;i++)
  {
   ACCESS *a = &t->Accesses[i];

   if (no_jitter)
   {
    a->Jitter = a->Loss = a->Delay = 0;
   }

   if (no_include)
   {
    if (StartWith(a->SrcUsername, ACCESS_LIST_INCLUDED_PREFIX) ||
     StartWith(a->SrcUsername, ACCESS_LIST_EXCLUDED_PREFIX))
    {
     ClearStr(a->SrcUsername, sizeof(a->SrcUsername));
    }

    if (StartWith(a->DestUsername, ACCESS_LIST_INCLUDED_PREFIX) ||
     StartWith(a->DestUsername, ACCESS_LIST_EXCLUDED_PREFIX))
    {
     ClearStr(a->DestUsername, sizeof(a->DestUsername));
    }
   }

   if (i == (t->NumAccess - 1))
   {
    Sort(h->AccessList);
   }

   AddAccessListEx(h, a, ((i != (t->NumAccess - 1)) ? 1 : 0), ((i != (t->NumAccess - 1)) ? 1 : 0));
  }

  UnlockList(h->AccessList);

  IncrementServerConfigRevision(s);

  h->CurrentVersion++;
  SiHubUpdateProc(h);
 }
 else
 {
  UnlockList(h->AccessList);
 }

 ReleaseHub(h);

 return ret;
}
