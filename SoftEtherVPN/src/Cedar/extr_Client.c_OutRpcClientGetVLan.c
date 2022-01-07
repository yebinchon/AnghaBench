
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Guid; int FileName; int Version; int MacAddress; int Enabled; int DeviceName; } ;
typedef TYPE_1__ RPC_CLIENT_GET_VLAN ;
typedef int PACK ;


 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcClientGetVLan(PACK *p, RPC_CLIENT_GET_VLAN *v)
{

 if (v == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "DeviceName", v->DeviceName);
 PackAddInt(p, "Enabled", v->Enabled);
 PackAddStr(p, "MacAddress", v->MacAddress);
 PackAddStr(p, "Version", v->Version);
 PackAddStr(p, "FileName", v->FileName);
 PackAddStr(p, "Guid", v->Guid);
}
