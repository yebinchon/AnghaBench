
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {int * PacketLogConfig; } ;
struct TYPE_8__ {TYPE_1__* TCPHeader; } ;
struct TYPE_9__ {int TypeL3; int * HttpLog; int TypeL7; TYPE_2__ L4; int TypeL4; } ;
struct TYPE_7__ {int Flag; } ;
typedef TYPE_3__ PKT ;
typedef TYPE_4__ HUB_LOG ;
 int MAX (int ,int ) ;
 size_t PACKET_LOG_ARP ;
 size_t PACKET_LOG_DHCP ;
 size_t PACKET_LOG_ETHERNET ;
 size_t PACKET_LOG_ICMP ;
 size_t PACKET_LOG_IP ;
 int PACKET_LOG_NONE ;
 size_t PACKET_LOG_TCP ;
 size_t PACKET_LOG_TCP_CONN ;
 size_t PACKET_LOG_UDP ;
 int TCP_FIN ;
 int TCP_RST ;
 int TCP_SYN ;

UINT CalcPacketLoggingLevelEx(HUB_LOG *g, PKT *packet)
{
 UINT ret = 0;

 if (g == ((void*)0) || packet == ((void*)0))
 {
  return PACKET_LOG_NONE;
 }


 ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_ETHERNET]);

 switch (packet->TypeL3)
 {
 case 138:

  ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_ARP]);
  break;

 case 137:

  ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_IP]);

  switch (packet->TypeL4)
  {
  case 135:

   ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_ICMP]);
   break;

  case 133:

   ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_TCP]);

   if (packet->L4.TCPHeader->Flag & TCP_SYN ||
    packet->L4.TCPHeader->Flag & TCP_RST ||
    packet->L4.TCPHeader->Flag & TCP_FIN)
   {

    ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_TCP_CONN]);
   }

   break;

  case 132:

   ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_UDP]);

   switch (packet->TypeL7)
   {
   case 131:

    ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_DHCP]);
    break;

   case 129:

    ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_TCP_CONN]);
    break;

   case 128:

    ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_TCP_CONN]);
    break;

    case 130:

     ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_TCP_CONN]);
     break;
   }

   break;
  }

  break;

 case 136:

  ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_IP]);

  switch (packet->TypeL4)
  {
  case 134:

   ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_ICMP]);
   break;

  case 133:

   ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_TCP]);

   if (packet->L4.TCPHeader->Flag & TCP_SYN ||
    packet->L4.TCPHeader->Flag & TCP_RST ||
    packet->L4.TCPHeader->Flag & TCP_FIN)
   {

    ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_TCP_CONN]);
   }

   break;

  case 132:

   ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_UDP]);

   switch (packet->TypeL7)
   {
   case 129:

    ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_TCP_CONN]);
    break;

   case 128:

    ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_TCP_CONN]);
    break;

    case 130:

     ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_TCP_CONN]);
     break;
   }

   break;
  }

  break;
 }

 if (packet->HttpLog != ((void*)0))
 {

  ret = MAX(ret, g->PacketLogConfig[PACKET_LOG_TCP_CONN]);
 }

 return ret;
}
