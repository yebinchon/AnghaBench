
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_13__ {TYPE_2__* Server; } ;
struct TYPE_12__ {int NumItem; int * IdList; } ;
struct TYPE_11__ {TYPE_1__* IPsecServer; int * Cedar; } ;
struct TYPE_10__ {int LockSettings; int EtherIPIdList; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_ENUM_ETHERIP_ID ;
typedef int ETHERIP_ID ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN ;


 int Copy (int *,int *,int) ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int FreeRpcEnumEtherIpId (TYPE_3__*) ;
 int GetServerCapsBool (TYPE_2__*,char*) ;
 int * LIST_DATA (int ,int) ;
 int LIST_NUM (int ) ;
 int Lock (int ) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int SERVER_ADMIN_ONLY ;
 int Unlock (int ) ;
 int Zero (TYPE_3__*,int) ;
 int * ZeroMalloc (int) ;

UINT StEnumEtherIpId(ADMIN *a, RPC_ENUM_ETHERIP_ID *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;
 SERVER_ADMIN_ONLY;
 NO_SUPPORT_FOR_BRIDGE;
 if (GetServerCapsBool(s, "b_support_ipsec") == 0 || s->IPsecServer == ((void*)0))
 {
  return ERR_NOT_SUPPORTED;
 }

 FreeRpcEnumEtherIpId(t);
 Zero(t, sizeof(RPC_ENUM_ETHERIP_ID));

 Lock(s->IPsecServer->LockSettings);
 {
  UINT i;
  UINT num;

  num = LIST_NUM(s->IPsecServer->EtherIPIdList);

  t->NumItem = num;
  t->IdList = ZeroMalloc(sizeof(ETHERIP_ID) * num);

  for (i = 0;i < num;i++)
  {
   ETHERIP_ID *d = &t->IdList[i];
   ETHERIP_ID *src = LIST_DATA(s->IPsecServer->EtherIPIdList, i);

   Copy(d, src, sizeof(ETHERIP_ID));
  }
 }
 Unlock(s->IPsecServer->LockSettings);

 return ERR_NO_ERROR;
}
