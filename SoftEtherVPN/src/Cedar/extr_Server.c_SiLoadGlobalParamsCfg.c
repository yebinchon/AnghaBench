
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FOLDER ;


 int CfgGetInt (int *,char*) ;
 int GP_FIFO_BUDGET ;
 int GP_HUB_ARP_SEND_INTERVAL ;
 int GP_IP_TABLE_EXPIRE_TIME ;
 int GP_IP_TABLE_EXPIRE_TIME_DHCP ;
 int GP_MAC_TABLE_EXPIRE_TIME ;
 int GP_MAX_BUFFERING_PACKET_SIZE ;
 int GP_MAX_HUB_LINKS ;
 int GP_MAX_IP_TABLES ;
 int GP_MAX_MAC_TABLES ;
 int GP_MAX_SEND_SOCKET_QUEUE_NUM ;
 int GP_MAX_SEND_SOCKET_QUEUE_SIZE ;
 int GP_MAX_STORED_QUEUE_NUM ;
 int GP_MEM_FIFO_REALLOC_MEM_SIZE ;
 int GP_MIN_SEND_SOCKET_QUEUE_SIZE ;
 int GP_QUEUE_BUDGET ;
 int GP_SELECT_TIME ;
 int GP_SELECT_TIME_FOR_NAT ;
 int GP_STORM_CHECK_SPAN ;
 int GP_STORM_DISCARD_VALUE_END ;
 int GP_STORM_DISCARD_VALUE_START ;
 int MEM_FIFO_REALLOC_MEM_SIZE ;
 int SetFifoCurrentReallocMemSize (int ) ;
 int SiLoadGlobalParamItem (int ,int ) ;

void SiLoadGlobalParamsCfg(FOLDER *f)
{
 SiLoadGlobalParamItem(GP_MAX_SEND_SOCKET_QUEUE_SIZE, CfgGetInt(f, "MAX_SEND_SOCKET_QUEUE_SIZE"));
 SiLoadGlobalParamItem(GP_MIN_SEND_SOCKET_QUEUE_SIZE, CfgGetInt(f, "MIN_SEND_SOCKET_QUEUE_SIZE"));
 SiLoadGlobalParamItem(GP_MAX_SEND_SOCKET_QUEUE_NUM, CfgGetInt(f, "MAX_SEND_SOCKET_QUEUE_NUM"));
 SiLoadGlobalParamItem(GP_SELECT_TIME, CfgGetInt(f, "SELECT_TIME"));
 SiLoadGlobalParamItem(GP_SELECT_TIME_FOR_NAT, CfgGetInt(f, "SELECT_TIME_FOR_NAT"));
 SiLoadGlobalParamItem(GP_MAX_STORED_QUEUE_NUM, CfgGetInt(f, "MAX_STORED_QUEUE_NUM"));
 SiLoadGlobalParamItem(GP_MAX_BUFFERING_PACKET_SIZE, CfgGetInt(f, "MAX_BUFFERING_PACKET_SIZE"));
 SiLoadGlobalParamItem(GP_HUB_ARP_SEND_INTERVAL, CfgGetInt(f, "HUB_ARP_SEND_INTERVAL"));
 SiLoadGlobalParamItem(GP_MAC_TABLE_EXPIRE_TIME, CfgGetInt(f, "MAC_TABLE_EXPIRE_TIME"));
 SiLoadGlobalParamItem(GP_IP_TABLE_EXPIRE_TIME, CfgGetInt(f, "IP_TABLE_EXPIRE_TIME"));
 SiLoadGlobalParamItem(GP_IP_TABLE_EXPIRE_TIME_DHCP, CfgGetInt(f, "IP_TABLE_EXPIRE_TIME_DHCP"));
 SiLoadGlobalParamItem(GP_STORM_CHECK_SPAN, CfgGetInt(f, "STORM_CHECK_SPAN"));
 SiLoadGlobalParamItem(GP_STORM_DISCARD_VALUE_START, CfgGetInt(f, "STORM_DISCARD_VALUE_START"));
 SiLoadGlobalParamItem(GP_STORM_DISCARD_VALUE_END, CfgGetInt(f, "STORM_DISCARD_VALUE_END"));
 SiLoadGlobalParamItem(GP_MAX_MAC_TABLES, CfgGetInt(f, "MAX_MAC_TABLES"));
 SiLoadGlobalParamItem(GP_MAX_IP_TABLES, CfgGetInt(f, "MAX_IP_TABLES"));
 SiLoadGlobalParamItem(GP_MAX_HUB_LINKS, CfgGetInt(f, "MAX_HUB_LINKS"));
 SiLoadGlobalParamItem(GP_MEM_FIFO_REALLOC_MEM_SIZE, CfgGetInt(f, "MEM_FIFO_REALLOC_MEM_SIZE"));
 SiLoadGlobalParamItem(GP_QUEUE_BUDGET, CfgGetInt(f, "QUEUE_BUDGET"));
 SiLoadGlobalParamItem(GP_FIFO_BUDGET, CfgGetInt(f, "FIFO_BUDGET"));

 SetFifoCurrentReallocMemSize(MEM_FIFO_REALLOC_MEM_SIZE);
}
