
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_18__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_17__ {int Me; } ;
struct TYPE_16__ {int IpTable; } ;
struct TYPE_15__ {int Key; int HubName; } ;
struct TYPE_14__ {scalar_t__ ServerType; int FarmMemberList; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_DELETE_TABLE ;
typedef int IP_TABLE_ENTRY ;
typedef TYPE_3__ HUB ;
typedef TYPE_4__ FARM_MEMBER ;
typedef int CEDAR ;
typedef TYPE_5__ ADMIN ;


 int CHECK_RIGHT ;
 int Delete (int ,int *) ;
 scalar_t__ ERR_HUB_NOT_FOUND ;
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_OBJECT_NOT_FOUND ;
 int Free (int *) ;
 TYPE_3__* GetHub (int *,int ) ;
 scalar_t__ GetHubAdminOption (TYPE_3__*,char*) ;
 scalar_t__ IsInListKey (int ,int ) ;
 TYPE_4__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int * ListKeyToPointer (int ,int ) ;
 int LockHubList (int *) ;
 int LockList (int ) ;
 int ReleaseHub (TYPE_3__*) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 int SiCallDeleteIpTable (TYPE_1__*,TYPE_4__*,int ,int ) ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;

UINT StDeleteIpTable(ADMIN *a, RPC_DELETE_TABLE *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h = ((void*)0);
 UINT ret = ERR_NO_ERROR;

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

 if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_delete_iptable") != 0)
 {
  ReleaseHub(h);
  return ERR_NOT_ENOUGH_RIGHT;
 }

 LockList(h->IpTable);
 {
  if (IsInListKey(h->IpTable, t->Key))
  {
   IP_TABLE_ENTRY *e = ListKeyToPointer(h->IpTable, t->Key);
   Free(e);
   Delete(h->IpTable, e);
  }
  else
  {
   ret = ERR_OBJECT_NOT_FOUND;
  }
 }
 UnlockList(h->IpTable);

 if (ret == ERR_OBJECT_NOT_FOUND)
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
      SiCallDeleteIpTable(s, f, t->HubName, t->Key);
      ret = ERR_NO_ERROR;
     }
    }
   }
   UnlockList(s->FarmMemberList);
  }
 }

 ReleaseHub(h);

 return ret;
}
