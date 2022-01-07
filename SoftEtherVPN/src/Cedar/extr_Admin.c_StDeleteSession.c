
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int name ;
typedef int hubname ;
typedef scalar_t__ UINT ;
struct TYPE_19__ {int ServerAdmin; TYPE_2__* Server; } ;
struct TYPE_18__ {int Me; } ;
struct TYPE_17__ {int Name; int HubName; } ;
struct TYPE_16__ {scalar_t__ ServerType; int FarmMemberList; int * Cedar; } ;
struct TYPE_15__ {scalar_t__ L3SwitchMode; scalar_t__ BridgeMode; scalar_t__ SecureNATMode; scalar_t__ LinkModeServer; } ;
typedef TYPE_1__ SESSION ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_DELETE_SESSION ;
typedef int HUB ;
typedef TYPE_4__ FARM_MEMBER ;
typedef int CEDAR ;
typedef TYPE_5__ ADMIN ;


 int ALog (TYPE_5__*,int *,char*,int ) ;
 int CHECK_RIGHT ;
 scalar_t__ ERR_BRIDGE_CANT_DISCONNECT ;
 scalar_t__ ERR_HUB_NOT_FOUND ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_LAYER3_CANT_DISCONNECT ;
 scalar_t__ ERR_LINK_CANT_DISCONNECT ;
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_OBJECT_NOT_FOUND ;
 scalar_t__ ERR_SNAT_CANT_DISCONNECT ;
 int * GetHub (int *,int ) ;
 scalar_t__ GetHubAdminOption (int *,char*) ;
 TYPE_1__* GetSessionByName (int *,char*) ;
 scalar_t__ IsEmptyStr (int ) ;
 TYPE_4__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockHubList (int *) ;
 int LockList (int ) ;
 int MAX_HUBNAME_LEN ;
 int MAX_SESSION_NAME_LEN ;
 int ReleaseHub (int *) ;
 int ReleaseSession (TYPE_1__*) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 int SiCallDeleteSession (TYPE_2__*,TYPE_4__*,int ,int ) ;
 int StopSession (TYPE_1__*) ;
 int StrCpy (char*,int,int ) ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;

UINT StDeleteSession(ADMIN *a, RPC_DELETE_SESSION *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h = ((void*)0);
 UINT ret = ERR_NO_ERROR;
 char hubname[MAX_HUBNAME_LEN + 1];
 char name[MAX_SESSION_NAME_LEN + 1];
 SESSION *sess;

 if (IsEmptyStr(t->Name))
 {
  return ERR_INVALID_PARAMETER;
 }

 StrCpy(hubname, sizeof(hubname), t->HubName);
 StrCpy(name, sizeof(name), t->Name);

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

 if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_disconnect_session") != 0)
 {
  ReleaseHub(h);
  return ERR_NOT_ENOUGH_RIGHT;
 }

 sess = GetSessionByName(h, name);

 if (sess == ((void*)0))
 {
  if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
  {

   UINT i;
   LockList(s->FarmMemberList);
   {
    for (i = 0;i < LIST_NUM(s->FarmMemberList);i++)
    {
     FARM_MEMBER *f = LIST_DATA(s->FarmMemberList, i);
     if (f->Me == 0)
     {

      SiCallDeleteSession(s, f, t->HubName, t->Name);
     }
    }
   }
   UnlockList(s->FarmMemberList);
  }
  else
  {
   ret = ERR_OBJECT_NOT_FOUND;
  }
 }
 else
 {
  if (sess->LinkModeServer)
  {
   ret = ERR_LINK_CANT_DISCONNECT;
  }
  else if (sess->SecureNATMode)
  {
   ret = ERR_SNAT_CANT_DISCONNECT;
  }
  else if (sess->BridgeMode)
  {
   ret = ERR_BRIDGE_CANT_DISCONNECT;
  }
  else if (sess->L3SwitchMode)
  {
   ret = ERR_LAYER3_CANT_DISCONNECT;
  }
  else
  {
   StopSession(sess);
  }
  ReleaseSession(sess);
 }

 if (ret != ERR_NO_ERROR)
 {
  ALog(a, h, "LA_DELETE_SESSION", t->Name);
 }

 ReleaseHub(h);

 return ret;
}
