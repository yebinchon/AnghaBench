
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {int * PacketLogConfig; void* PacketLogSwitchType; } ;
struct TYPE_6__ {TYPE_1__ LogSetting; void* NoPromiscuous; int DeviceName; } ;
typedef TYPE_2__ RPC_ADD_DEVICE ;
typedef int PACK ;


 size_t NUM_PACKET_LOG ;
 void* PackGetInt (int *,char*) ;
 int PackGetIntEx (int *,char*,size_t) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_2__*,int) ;

void InRpcAddDevice(RPC_ADD_DEVICE *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ADD_DEVICE));
 PackGetStr(p, "DeviceName", t->DeviceName, sizeof(t->DeviceName));
 t->NoPromiscuous = PackGetInt(p, "NoPromiscuous");
 t->LogSetting.PacketLogSwitchType = PackGetInt(p, "PacketLogSwitchType");

 for (i = 0;i < NUM_PACKET_LOG;i++)
 {
  t->LogSetting.PacketLogConfig[i] = PackGetIntEx(p, "PacketLogConfig", i);
 }
}
