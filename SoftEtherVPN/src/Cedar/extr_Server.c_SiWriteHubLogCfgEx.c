
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * PacketLogConfig; int PacketLogSwitchType; int SavePacketLog; int SecurityLogSwitchType; int SaveSecurityLog; } ;
typedef TYPE_1__ HUB_LOG ;
typedef int FOLDER ;


 int CfgAddBool (int *,char*,int ) ;
 int CfgAddInt (int *,char*,int ) ;
 size_t PACKET_LOG_ARP ;
 size_t PACKET_LOG_DHCP ;
 size_t PACKET_LOG_ETHERNET ;
 size_t PACKET_LOG_ICMP ;
 size_t PACKET_LOG_IP ;
 size_t PACKET_LOG_TCP ;
 size_t PACKET_LOG_TCP_CONN ;
 size_t PACKET_LOG_UDP ;

void SiWriteHubLogCfgEx(FOLDER *f, HUB_LOG *g, bool el_mode)
{

 if (f == ((void*)0) || g == ((void*)0))
 {
  return;
 }

 if (el_mode == 0)
 {
  CfgAddBool(f, "SaveSecurityLog", g->SaveSecurityLog);
  CfgAddInt(f, "SecurityLogSwitchType", g->SecurityLogSwitchType);
  CfgAddBool(f, "SavePacketLog", g->SavePacketLog);
 }

 CfgAddInt(f, "PacketLogSwitchType", g->PacketLogSwitchType);

 CfgAddInt(f, "PACKET_LOG_TCP_CONN", g->PacketLogConfig[PACKET_LOG_TCP_CONN]);
 CfgAddInt(f, "PACKET_LOG_TCP", g->PacketLogConfig[PACKET_LOG_TCP]);
 CfgAddInt(f, "PACKET_LOG_DHCP", g->PacketLogConfig[PACKET_LOG_DHCP]);
 CfgAddInt(f, "PACKET_LOG_UDP", g->PacketLogConfig[PACKET_LOG_UDP]);
 CfgAddInt(f, "PACKET_LOG_ICMP", g->PacketLogConfig[PACKET_LOG_ICMP]);
 CfgAddInt(f, "PACKET_LOG_IP", g->PacketLogConfig[PACKET_LOG_IP]);
 CfgAddInt(f, "PACKET_LOG_ARP", g->PacketLogConfig[PACKET_LOG_ARP]);
 CfgAddInt(f, "PACKET_LOG_ETHERNET", g->PacketLogConfig[PACKET_LOG_ETHERNET]);
}
