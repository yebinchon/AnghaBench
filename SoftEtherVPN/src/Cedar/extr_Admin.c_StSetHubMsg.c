
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int hubname ;
typedef int UINT ;
struct TYPE_9__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_8__ {int Msg; int HubName; } ;
struct TYPE_7__ {scalar_t__ ServerType; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_MSG ;
typedef int HUB ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int CHECK_RIGHT ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_MEMORY_NOT_ENOUGH ;
 int ERR_NOT_ENOUGH_RIGHT ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int * GetHub (int *,char*) ;
 scalar_t__ GetHubAdminOption (int *,char*) ;
 scalar_t__ HUB_MAXMSG_LEN ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int MAX_HUBNAME_LEN ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (int *) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SetHubMsg (int *,int ) ;
 int StrCpy (char*,int,int ) ;
 scalar_t__ UniStrLen (int ) ;

UINT StSetHubMsg(ADMIN *a, RPC_MSG *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT ret = ERR_NO_ERROR;
 char hubname[MAX_HUBNAME_LEN + 1];

 CHECK_RIGHT;
 NO_SUPPORT_FOR_BRIDGE;
 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_SUPPORTED;
 }
 if (UniStrLen(t->Msg) > HUB_MAXMSG_LEN)
 {
  return ERR_MEMORY_NOT_ENOUGH;
 }

 StrCpy(hubname, sizeof(hubname), t->HubName);

 h = GetHub(c, hubname);

 if (h == ((void*)0))
 {
  ret = ERR_HUB_NOT_FOUND;
 }
 else
 {
  if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_change_msg") != 0)
  {
   ret = ERR_NOT_ENOUGH_RIGHT;
  }
  else
  {
   SetHubMsg(h, t->Msg);
  }

  ReleaseHub(h);
 }

 IncrementServerConfigRevision(s);

 return ret;
}
