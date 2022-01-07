
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int * PacketLogConfig; int PacketLogSwitchType; } ;
struct TYPE_5__ {TYPE_1__ LogSetting; int NoPromiscuous; int DeviceName; } ;
typedef TYPE_2__ RPC_ADD_DEVICE ;
typedef int PACK ;


 size_t NUM_PACKET_LOG ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcAddDevice(PACK *p, RPC_ADD_DEVICE *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "DeviceName", t->DeviceName);
 PackAddInt(p, "NoPromiscuous", t->NoPromiscuous);
 PackAddInt(p, "PacketLogSwitchType", t->LogSetting.PacketLogSwitchType);

 for (i = 0;i < NUM_PACKET_LOG;i++)
 {
  PackAddIntEx(p, "PacketLogConfig", t->LogSetting.PacketLogConfig[i], i, NUM_PACKET_LOG);
 }
}
