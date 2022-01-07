
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {int * PacketLogConfig; void* PacketLogSwitchType; void* SavePacketLog; void* SecurityLogSwitchType; void* SaveSecurityLog; } ;
struct TYPE_6__ {TYPE_1__ LogSetting; int HubName; } ;
typedef TYPE_2__ RPC_HUB_LOG ;
typedef int PACK ;


 size_t NUM_PACKET_LOG ;
 void* PackGetBool (int *,char*) ;
 void* PackGetInt (int *,char*) ;
 int PackGetIntEx (int *,char*,size_t) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_2__*,int) ;

void InRpcHubLog(RPC_HUB_LOG *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_HUB_LOG));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 t->LogSetting.SaveSecurityLog = PackGetBool(p, "SaveSecurityLog");
 t->LogSetting.SecurityLogSwitchType = PackGetInt(p, "SecurityLogSwitchType");
 t->LogSetting.SavePacketLog = PackGetBool(p, "SavePacketLog");
 t->LogSetting.PacketLogSwitchType = PackGetInt(p, "PacketLogSwitchType");
 for (i = 0;i < NUM_PACKET_LOG;i++)
 {
  t->LogSetting.PacketLogConfig[i] = PackGetIntEx(p, "PacketLogConfig", i);
 }
}
