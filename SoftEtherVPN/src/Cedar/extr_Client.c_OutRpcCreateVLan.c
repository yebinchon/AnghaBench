
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int DeviceName; } ;
typedef TYPE_1__ RPC_CLIENT_CREATE_VLAN ;
typedef int PACK ;


 int PackAddStr (int *,char*,int ) ;

void OutRpcCreateVLan(PACK *p, RPC_CLIENT_CREATE_VLAN *v)
{

 if (v == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "DeviceName", v->DeviceName);
}
