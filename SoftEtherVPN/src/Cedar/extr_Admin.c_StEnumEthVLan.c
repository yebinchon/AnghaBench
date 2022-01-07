
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {TYPE_1__* Server; } ;
struct TYPE_5__ {int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef int RPC_ENUM_ETH_VLAN ;
typedef int CEDAR ;
typedef TYPE_2__ ADMIN ;


 int ERR_INTERNAL_ERROR ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int EnumEthVLanWin32 (int *) ;
 int FreeRpcEnumEthVLan (int *) ;
 int GetServerCapsBool (TYPE_1__*,char*) ;
 int SERVER_ADMIN_ONLY ;
 int Zero (int *,int) ;

UINT StEnumEthVLan(ADMIN *a, RPC_ENUM_ETH_VLAN *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;

 SERVER_ADMIN_ONLY;
 ret = ERR_NOT_SUPPORTED;


 return ret;
}
