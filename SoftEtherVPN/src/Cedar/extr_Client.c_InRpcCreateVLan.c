
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int DeviceName; } ;
typedef TYPE_1__ RPC_CLIENT_CREATE_VLAN ;
typedef int PACK ;


 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcCreateVLan(RPC_CLIENT_CREATE_VLAN *v, PACK *p)
{

 if (v == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(v, sizeof(RPC_CLIENT_CREATE_VLAN));
 PackGetStr(p, "DeviceName", v->DeviceName, sizeof(v->DeviceName));
}
