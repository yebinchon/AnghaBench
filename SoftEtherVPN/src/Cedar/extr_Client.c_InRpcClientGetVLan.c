
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Enabled; int Guid; int FileName; int Version; int MacAddress; int DeviceName; } ;
typedef TYPE_1__ RPC_CLIENT_GET_VLAN ;
typedef int PACK ;


 scalar_t__ PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcClientGetVLan(RPC_CLIENT_GET_VLAN *v, PACK *p)
{

 if (v == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(v, sizeof(RPC_CLIENT_GET_VLAN));
 PackGetStr(p, "DeviceName", v->DeviceName, sizeof(v->DeviceName));
 v->Enabled = PackGetInt(p, "Enabled") ? 1 : 0;
 PackGetStr(p, "MacAddress", v->MacAddress, sizeof(v->MacAddress));
 PackGetStr(p, "Version", v->Version, sizeof(v->Version));
 PackGetStr(p, "FileName", v->FileName, sizeof(v->FileName));
 PackGetStr(p, "Guid", v->Guid, sizeof(v->Guid));
}
