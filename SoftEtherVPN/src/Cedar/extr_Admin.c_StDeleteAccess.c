
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_22__ {scalar_t__ Id; } ;
struct TYPE_21__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_20__ {int AccessList; } ;
struct TYPE_19__ {scalar_t__ Id; int HubName; } ;
struct TYPE_18__ {scalar_t__ ServerType; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_DELETE_ACCESS ;
typedef TYPE_3__ HUB ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN ;
typedef TYPE_5__ ACCESS ;


 int ALog (TYPE_4__*,TYPE_3__*,char*) ;
 int CHECK_RIGHT ;
 int Delete (int ,TYPE_5__*) ;
 scalar_t__ ERR_HUB_NOT_FOUND ;
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ;
 scalar_t__ ERR_NOT_FARM_CONTROLLER ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_OBJECT_NOT_FOUND ;
 int Free (TYPE_5__*) ;
 TYPE_3__* GetHub (int *,int ) ;
 scalar_t__ GetHubAdminOption (TYPE_3__*,char*) ;
 scalar_t__ HashPtrToUINT (TYPE_5__*) ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 TYPE_5__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockHubList (int *) ;
 int LockList (int ) ;
 scalar_t__ MAX_ACCESSLISTS ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (TYPE_3__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;

UINT StDeleteAccess(ADMIN *a, RPC_DELETE_ACCESS *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;
 UINT i;
 bool exists;


 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_FARM_CONTROLLER;
 }

 CHECK_RIGHT;
 NO_SUPPORT_FOR_BRIDGE;

 LockHubList(c);
 {
  h = GetHub(c, t->HubName);
 }
 UnlockHubList(c);

 if (h == ((void*)0))
 {
  return ERR_HUB_NOT_FOUND;
 }

 if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_change_access_list") != 0)
 {
  ReleaseHub(h);
  return ERR_NOT_ENOUGH_RIGHT;
 }

 exists = 0;

 LockList(h->AccessList);
 {
  for (i = 0;i < LIST_NUM(h->AccessList);i++)
  {
   ACCESS *access = LIST_DATA(h->AccessList, i);

   if ((t->Id < MAX_ACCESSLISTS && access->Id == t->Id) ||
    (t->Id >= MAX_ACCESSLISTS && HashPtrToUINT(access) == t->Id))
   {
    Free(access);
    Delete(h->AccessList, access);
    exists = 1;

    break;
   }
  }
 }
 UnlockList(h->AccessList);

 if (exists == 0)
 {
  ReleaseHub(h);
  return ERR_OBJECT_NOT_FOUND;
 }

 ALog(a, h, "LA_DELETE_ACCESS");

 IncrementServerConfigRevision(s);

 ReleaseHub(h);

 return ERR_NO_ERROR;
}
