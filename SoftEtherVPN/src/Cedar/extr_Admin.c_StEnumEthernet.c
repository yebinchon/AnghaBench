
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tmp ;
typedef size_t UINT ;
struct TYPE_12__ {int NumItem; TYPE_2__* Items; } ;
struct TYPE_11__ {char* DeviceName; int NetworkConnectionName; } ;
struct TYPE_10__ {int NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ RPC_ENUM_ETH_ITEM ;
typedef TYPE_3__ RPC_ENUM_ETH ;
typedef int ADMIN ;


 size_t ERR_NOT_SUPPORTED ;
 size_t ERR_NO_ERROR ;
 int EthGetInterfaceDescriptionUnix (char*,char*,int) ;
 int EthIsInterfaceDescriptionSupportedUnix () ;
 int FreeRpcEnumEth (TYPE_3__*) ;
 int FreeToken (TYPE_1__*) ;
 TYPE_1__* GetEthList () ;
 int GetEthNetworkConnectionName (int ,int,char*) ;
 int MAX_SIZE ;
 int SERVER_ADMIN_ONLY ;
 int StrCpy (char*,int,char*) ;
 int StrToUni (int ,int,char*) ;
 int Zero (TYPE_3__*,int) ;
 TYPE_2__* ZeroMalloc (int) ;

UINT StEnumEthernet(ADMIN *a, RPC_ENUM_ETH *t)
{
 TOKEN_LIST *o;
 UINT i;
 char tmp[MAX_SIZE];
 bool unix_support = 0;

 SERVER_ADMIN_ONLY;





 o = GetEthList();
 if (o == ((void*)0))
 {
  return ERR_NOT_SUPPORTED;
 }

 FreeRpcEnumEth(t);
 Zero(t, sizeof(RPC_ENUM_ETH));

 t->NumItem = o->NumTokens;
 t->Items = ZeroMalloc(sizeof(RPC_ENUM_ETH_ITEM) * t->NumItem);

 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_ETH_ITEM *e = &t->Items[i];

  StrCpy(e->DeviceName, sizeof(e->DeviceName), o->Token[i]);

  StrCpy(tmp, sizeof(tmp), e->DeviceName);




  if (unix_support == 0)
  {
   StrCpy(tmp, sizeof(tmp), "");
  }
  else
  {
   if (EthGetInterfaceDescriptionUnix(e->DeviceName, tmp, sizeof(tmp)) == 0)
   {
    StrCpy(tmp, sizeof(tmp), e->DeviceName);
   }
  }

  StrToUni(e->NetworkConnectionName, sizeof(e->NetworkConnectionName), tmp);

 }

 FreeToken(o);

 return ERR_NO_ERROR;
}
