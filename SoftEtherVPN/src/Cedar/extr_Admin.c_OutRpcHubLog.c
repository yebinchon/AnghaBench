
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int * PacketLogConfig; int PacketLogSwitchType; int SavePacketLog; int SecurityLogSwitchType; int SaveSecurityLog; } ;
struct TYPE_5__ {TYPE_1__ LogSetting; int HubName; } ;
typedef TYPE_2__ RPC_HUB_LOG ;
typedef int PACK ;


 size_t NUM_PACKET_LOG ;
 int PackAddBool (int *,char*,int ) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcHubLog(PACK *p, RPC_HUB_LOG *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 PackAddBool(p, "SaveSecurityLog", t->LogSetting.SaveSecurityLog);
 PackAddInt(p, "SecurityLogSwitchType", t->LogSetting.SecurityLogSwitchType);
 PackAddBool(p, "SavePacketLog", t->LogSetting.SavePacketLog);
 PackAddInt(p, "PacketLogSwitchType", t->LogSetting.PacketLogSwitchType);
 for (i = 0;i < NUM_PACKET_LOG;i++)
 {
  PackAddIntEx(p, "PacketLogConfig", t->LogSetting.PacketLogConfig[i], i, NUM_PACKET_LOG);
 }
}
