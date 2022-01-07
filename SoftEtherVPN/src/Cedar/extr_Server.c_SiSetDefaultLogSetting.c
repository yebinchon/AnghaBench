
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int SaveSecurityLog; int SavePacketLog; int * PacketLogConfig; void* PacketLogSwitchType; void* SecurityLogSwitchType; } ;
typedef TYPE_1__ HUB_LOG ;


 void* LOG_SWITCH_DAY ;
 size_t PACKET_LOG_DHCP ;
 int PACKET_LOG_HEADER ;
 size_t PACKET_LOG_TCP_CONN ;
 int Zero (TYPE_1__*,int) ;

void SiSetDefaultLogSetting(HUB_LOG *g)
{

 if (g == ((void*)0))
 {
  return;
 }

 Zero(g, sizeof(HUB_LOG));
 g->SaveSecurityLog = 1;
 g->SecurityLogSwitchType = LOG_SWITCH_DAY;
 g->SavePacketLog = 1;
 g->PacketLogSwitchType = LOG_SWITCH_DAY;
 g->PacketLogConfig[PACKET_LOG_TCP_CONN] =
  g->PacketLogConfig[PACKET_LOG_DHCP] = PACKET_LOG_HEADER;
}
