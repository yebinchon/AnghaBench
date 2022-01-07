
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hubname ;
typedef int UINT ;
struct TYPE_10__ {TYPE_1__* Server; } ;
struct TYPE_9__ {int Msg; int HubName; } ;
struct TYPE_8__ {scalar_t__ ServerType; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_MSG ;
typedef int HUB ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int CHECK_RIGHT ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_MEMORY_NOT_ENOUGH ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int FreeRpcMsg (TYPE_2__*) ;
 int * GetHub (int *,char*) ;
 int GetHubMsg (int *) ;
 scalar_t__ HUB_MAXMSG_LEN ;
 int MAX_HUBNAME_LEN ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (int *) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int StrCpy (char*,int,int ) ;
 scalar_t__ UniStrLen (int ) ;
 int Zero (TYPE_2__*,int) ;

UINT StGetHubMsg(ADMIN *a, RPC_MSG *t)
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
  FreeRpcMsg(t);
  Zero(t, sizeof(RPC_MSG));

  t->Msg = GetHubMsg(h);

  ReleaseHub(h);
 }

 return ret;
}
