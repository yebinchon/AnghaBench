
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_12__ {size_t NumItem; TYPE_2__* Items; } ;
struct TYPE_11__ {int DeviceName; } ;
struct TYPE_10__ {size_t NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ RPC_ENUM_DEVICE_ITEM ;
typedef TYPE_3__ RPC_ENUM_DEVICE ;
typedef int EL ;


 size_t ERR_NOT_SUPPORTED ;
 size_t ERR_NO_ERROR ;
 int FreeRpcEnumDevice (TYPE_3__*) ;
 int FreeToken (TYPE_1__*) ;
 TYPE_1__* GetEthList () ;
 int IsEthSupported () ;
 int StrCpy (int ,int,char*) ;
 int Zero (TYPE_3__*,int) ;
 TYPE_2__* ZeroMalloc (int) ;

UINT EtEnumAllDevice(EL *e, RPC_ENUM_DEVICE *t)
{
 TOKEN_LIST *eth;
 UINT i;
 if (IsEthSupported() == 0)
 {
  return ERR_NOT_SUPPORTED;
 }

 FreeRpcEnumDevice(t);
 Zero(t, sizeof(RPC_ENUM_DEVICE));

 eth = GetEthList();

 t->NumItem = eth->NumTokens;
 t->Items = ZeroMalloc(sizeof(RPC_ENUM_DEVICE_ITEM) * t->NumItem);

 for (i = 0;i < eth->NumTokens;i++)
 {
  char *name = eth->Token[i];
  RPC_ENUM_DEVICE_ITEM *item = &t->Items[i];

  StrCpy(item->DeviceName, sizeof(item->DeviceName), name);
 }

 FreeToken(eth);

 return ERR_NO_ERROR;
}
