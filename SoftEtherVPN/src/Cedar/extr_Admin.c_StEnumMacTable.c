
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int tmp ;
typedef int hubname ;
typedef scalar_t__ UINT ;
struct TYPE_20__ {TYPE_1__* Server; } ;
struct TYPE_19__ {int Me; } ;
struct TYPE_18__ {int HubName; } ;
struct TYPE_17__ {scalar_t__ ServerType; int FarmMemberList; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_ENUM_MAC_TABLE ;
typedef int HUB ;
typedef TYPE_3__ FARM_MEMBER ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN ;


 int AdjoinRpcEnumMacTable (TYPE_2__*,TYPE_2__*) ;
 int CHECK_RIGHT ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeRpcEnumMacTable (TYPE_2__*) ;
 TYPE_3__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int MAX_HUBNAME_LEN ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 int SiCallEnumMacTable (TYPE_1__*,TYPE_3__*,char*,TYPE_2__*) ;
 scalar_t__ SiEnumMacTable (TYPE_1__*,char*,TYPE_2__*) ;
 int StrCpy (char*,int,int ) ;
 int UnlockList (int ) ;
 int Zero (TYPE_2__*,int) ;

UINT StEnumMacTable(ADMIN *a, RPC_ENUM_MAC_TABLE *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h = ((void*)0);
 UINT ret = ERR_NO_ERROR;
 char hubname[MAX_HUBNAME_LEN + 1];
 UINT i;

 CHECK_RIGHT;


 StrCpy(hubname, sizeof(hubname), t->HubName);
 FreeRpcEnumMacTable(t);
 Zero(t, sizeof(RPC_ENUM_MAC_TABLE));

 ret = SiEnumMacTable(s, hubname, t);
 if (ret != ERR_NO_ERROR)
 {
  return ret;
 }

 if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
 {

  LockList(s->FarmMemberList);
  {
   for (i = 0;i < LIST_NUM(s->FarmMemberList);i++)
   {
    FARM_MEMBER *f = LIST_DATA(s->FarmMemberList, i);
    if (f->Me == 0)
    {
     RPC_ENUM_MAC_TABLE tmp;

     Zero(&tmp, sizeof(tmp));

     SiCallEnumMacTable(s, f, hubname, &tmp);

     AdjoinRpcEnumMacTable(t, &tmp);
     FreeRpcEnumMacTable(&tmp);
    }
   }
  }
  UnlockList(s->FarmMemberList);
 }

 return ret;
}
