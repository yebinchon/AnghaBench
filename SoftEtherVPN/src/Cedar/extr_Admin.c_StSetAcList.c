
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int hubname ;
typedef int UINT ;
struct TYPE_21__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_20__ {scalar_t__ Bridge; } ;
struct TYPE_19__ {TYPE_3__* HubDb; } ;
struct TYPE_18__ {int AcList; } ;
struct TYPE_17__ {int o; int HubName; } ;
struct TYPE_16__ {scalar_t__ ServerType; TYPE_5__* Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_AC_LIST ;
typedef TYPE_3__ HUBDB ;
typedef TYPE_4__ HUB ;
typedef TYPE_5__ CEDAR ;
typedef TYPE_6__ ADMIN ;


 int ALog (TYPE_6__*,TYPE_4__*,char*,int) ;
 int CHECK_RIGHT ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_NOT_ENOUGH_RIGHT ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE ;
 int ERR_NO_ERROR ;
 int GSF_DISABLE_AC ;
 scalar_t__ GetGlobalServerFlag (int ) ;
 TYPE_4__* GetHub (TYPE_5__*,char*) ;
 scalar_t__ GetHubAdminOption (TYPE_4__*,char*) ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int LIST_NUM (int ) ;
 int LockList (int ) ;
 int MAX_HUBNAME_LEN ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (TYPE_4__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SetAcList (int ,int ) ;
 int StrCpy (char*,int,int ) ;
 int UnlockList (int ) ;

UINT StSetAcList(ADMIN *a, RPC_AC_LIST *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT ret = ERR_NO_ERROR;
 char hubname[MAX_HUBNAME_LEN + 1];


 if (c->Bridge)
 {
  return ERR_NOT_SUPPORTED;
 }

 if (GetGlobalServerFlag(GSF_DISABLE_AC) != 0 && LIST_NUM(t->o) >= 1)
 {
  return ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE;
 }

 CHECK_RIGHT;
 NO_SUPPORT_FOR_BRIDGE;
 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_SUPPORTED;
 }

 StrCpy(hubname, sizeof(hubname), t->HubName);

 h = GetHub(c, hubname);

 if (h == ((void*)0))
 {
  ret = ERR_HUB_NOT_FOUND;
 }
 else
 {
  if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_change_access_control_list") != 0)
  {
   ret = ERR_NOT_ENOUGH_RIGHT;
  }
  else
  {
   if (h->HubDb == ((void*)0))
   {
    ret = ERR_NOT_SUPPORTED;
   }
   else
   {
    HUBDB *db = h->HubDb;

    LockList(db->AcList);
    {
     SetAcList(db->AcList, t->o);

     {
      ALog(a, h, "LA_SET_AC_LIST", LIST_NUM(t->o));

      IncrementServerConfigRevision(s);
     }
    }
    UnlockList(db->AcList);
   }
  }
  ReleaseHub(h);
 }

 return ret;
}
