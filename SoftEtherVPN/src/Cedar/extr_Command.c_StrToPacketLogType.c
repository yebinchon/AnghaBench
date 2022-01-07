
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int INFINITE ;
 scalar_t__ IsEmptyStr (char*) ;
 int PACKET_LOG_ARP ;
 int PACKET_LOG_DHCP ;
 int PACKET_LOG_ETHERNET ;
 int PACKET_LOG_ICMP ;
 int PACKET_LOG_IP ;
 int PACKET_LOG_TCP ;
 int PACKET_LOG_TCP_CONN ;
 int PACKET_LOG_UDP ;
 scalar_t__ StartWith (char*,char*) ;

UINT StrToPacketLogType(char *str)
{
 UINT ret = INFINITE;
 if (str == ((void*)0) || IsEmptyStr(str))
 {
  return INFINITE;
 }

 if (StartWith("tcpconn", str))
 {
  ret = PACKET_LOG_TCP_CONN;
 }
 else if (StartWith("tcpdata", str))
 {
  ret = PACKET_LOG_TCP;
 }
 else if (StartWith("dhcp", str))
 {
  ret = PACKET_LOG_DHCP;
 }
 else if (StartWith("udp", str))
 {
  ret = PACKET_LOG_UDP;
 }
 else if (StartWith("icmp", str))
 {
  ret = PACKET_LOG_ICMP;
 }
 else if (StartWith("ip", str))
 {
  ret = PACKET_LOG_IP;
 }
 else if (StartWith("arp", str))
 {
  ret = PACKET_LOG_ARP;
 }
 else if (StartWith("ethernet", str))
 {
  ret = PACKET_LOG_ETHERNET;
 }

 return ret;
}
