
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_14__ ;


typedef int UINT ;
struct TYPE_21__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_20__ {int CurrentVersion; int AccessList; } ;
struct TYPE_17__ {int DestUsername; int SrcUsername; scalar_t__ Loss; scalar_t__ Delay; scalar_t__ Jitter; } ;
struct TYPE_19__ {TYPE_14__ Access; int HubName; } ;
struct TYPE_18__ {scalar_t__ ServerType; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_ADD_ACCESS ;
typedef TYPE_3__ HUB ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN ;


 int ACCESS_LIST_EXCLUDED_PREFIX ;
 int ACCESS_LIST_INCLUDED_PREFIX ;
 int ALog (TYPE_4__*,TYPE_3__*,char*) ;
 int AddAccessList (TYPE_3__*,TYPE_14__*) ;
 int CHECK_RIGHT ;
 int ClearStr (int ,int) ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_NOT_ENOUGH_RIGHT ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int ERR_TOO_MANY_ACCESS_LIST ;
 TYPE_3__* GetHub (int *,int ) ;
 int GetHubAdminOption (TYPE_3__*,char*) ;
 int GetServerCapsInt (TYPE_1__*,char*) ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int LIST_NUM (int ) ;
 int LockHubList (int *) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (TYPE_3__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SiHubUpdateProc (TYPE_3__*) ;
 scalar_t__ StartWith (int ,int ) ;
 int UnlockHubList (int *) ;

UINT StAddAccess(ADMIN *a, RPC_ADD_ACCESS *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 bool no_jitter = 0;
 bool no_include = 0;


 NO_SUPPORT_FOR_BRIDGE;
 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_SUPPORTED;
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

 no_jitter = GetHubAdminOption(h, "no_delay_jitter_packet_loss");
 no_include = GetHubAdminOption(h, "no_access_list_include_file");

 if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_change_access_list") != 0)
 {
  ReleaseHub(h);
  return ERR_NOT_ENOUGH_RIGHT;
 }

 if ((LIST_NUM(h->AccessList) >= GetServerCapsInt(a->Server, "i_max_access_lists") ||
  (GetHubAdminOption(h, "max_accesslists") != 0) && (LIST_NUM(h->AccessList) >= GetHubAdminOption(h, "max_accesslists"))))
 {
  ReleaseHub(h);
  return ERR_TOO_MANY_ACCESS_LIST;
 }

 ALog(a, h, "LA_ADD_ACCESS");

 if (no_jitter)
 {
  t->Access.Jitter = t->Access.Delay = t->Access.Loss = 0;
 }

 if (no_include)
 {
  if (StartWith(t->Access.SrcUsername, ACCESS_LIST_INCLUDED_PREFIX) ||
   StartWith(t->Access.SrcUsername, ACCESS_LIST_EXCLUDED_PREFIX))
  {
   ClearStr(t->Access.SrcUsername, sizeof(t->Access.SrcUsername));
  }

  if (StartWith(t->Access.DestUsername, ACCESS_LIST_INCLUDED_PREFIX) ||
   StartWith(t->Access.DestUsername, ACCESS_LIST_EXCLUDED_PREFIX))
  {
   ClearStr(t->Access.DestUsername, sizeof(t->Access.DestUsername));
  }
 }

 AddAccessList(h, &t->Access);

 h->CurrentVersion++;
 SiHubUpdateProc(h);

 ReleaseHub(h);

 IncrementServerConfigRevision(s);

 return ERR_NO_ERROR;
}
