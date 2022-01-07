
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int hubname ;
typedef int UINT ;
struct TYPE_16__ {TYPE_1__* Server; } ;
struct TYPE_15__ {TYPE_3__* HubDb; } ;
struct TYPE_14__ {int AcList; } ;
struct TYPE_13__ {char* HubName; int o; } ;
struct TYPE_12__ {scalar_t__ ServerType; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_AC_LIST ;
typedef TYPE_3__ HUBDB ;
typedef TYPE_4__ HUB ;
typedef int CEDAR ;
typedef TYPE_5__ ADMIN ;


 int CHECK_RIGHT ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int FreeRpcAcList (TYPE_2__*) ;
 TYPE_4__* GetHub (int *,char*) ;
 int LockList (int ) ;
 int MAX_HUBNAME_LEN ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int NewAcList () ;
 int ReleaseHub (TYPE_4__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SetAcList (int ,int ) ;
 int StrCpy (char*,int,char*) ;
 int UnlockList (int ) ;
 int Zero (TYPE_2__*,int) ;

UINT StGetAcList(ADMIN *a, RPC_AC_LIST *t)
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


 StrCpy(hubname, sizeof(hubname), t->HubName);

 FreeRpcAcList(t);
 Zero(t, sizeof(RPC_AC_LIST));
 StrCpy(t->HubName, sizeof(t->HubName), hubname);

 h = GetHub(c, hubname);

 if (h == ((void*)0))
 {
  ret = ERR_HUB_NOT_FOUND;
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
    t->o = NewAcList();

    SetAcList(t->o, db->AcList);
   }
   UnlockList(db->AcList);
  }
  ReleaseHub(h);
 }

 return ret;
}
