
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void** PacketLogConfig; void* PacketLogSwitchType; void* SavePacketLog; void* SecurityLogSwitchType; void* SaveSecurityLog; } ;
typedef TYPE_1__ HUB_LOG ;
typedef int FOLDER ;


 void* CfgGetBool (int *,char*) ;
 void* CfgGetInt (int *,char*) ;
 size_t PACKET_LOG_ARP ;
 size_t PACKET_LOG_DHCP ;
 size_t PACKET_LOG_ETHERNET ;
 size_t PACKET_LOG_ICMP ;
 size_t PACKET_LOG_IP ;
 size_t PACKET_LOG_TCP ;
 size_t PACKET_LOG_TCP_CONN ;
 size_t PACKET_LOG_UDP ;
 int Zero (TYPE_1__*,int) ;

void SiLoadHubLogCfg(HUB_LOG *g, FOLDER *f)
{

 if (f == ((void*)0) || g == ((void*)0))
 {
  return;
 }

 Zero(g, sizeof(HUB_LOG));
 g->SaveSecurityLog = CfgGetBool(f, "SaveSecurityLog");
 g->SecurityLogSwitchType = CfgGetInt(f, "SecurityLogSwitchType");
 g->SavePacketLog = CfgGetBool(f, "SavePacketLog");
 g->PacketLogSwitchType = CfgGetInt(f, "PacketLogSwitchType");

 g->PacketLogConfig[PACKET_LOG_TCP_CONN] = CfgGetInt(f, "PACKET_LOG_TCP_CONN");
 g->PacketLogConfig[PACKET_LOG_TCP] = CfgGetInt(f, "PACKET_LOG_TCP");
 g->PacketLogConfig[PACKET_LOG_DHCP] = CfgGetInt(f, "PACKET_LOG_DHCP");
 g->PacketLogConfig[PACKET_LOG_UDP] = CfgGetInt(f, "PACKET_LOG_UDP");
 g->PacketLogConfig[PACKET_LOG_ICMP] = CfgGetInt(f, "PACKET_LOG_ICMP");
 g->PacketLogConfig[PACKET_LOG_IP] = CfgGetInt(f, "PACKET_LOG_IP");
 g->PacketLogConfig[PACKET_LOG_ARP] = CfgGetInt(f, "PACKET_LOG_ARP");
 g->PacketLogConfig[PACKET_LOG_ETHERNET] = CfgGetInt(f, "PACKET_LOG_ETHERNET");
}
