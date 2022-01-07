
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* UINT64 ;
typedef size_t UINT ;
typedef void* UCHAR ;
struct TYPE_4__ {size_t NumAck; size_t* AckPacketId; size_t PacketId; size_t DataSize; int Data; void* YourSessionId; void* MySessionId; void* KeyId; void* OpCode; } ;
typedef TYPE_1__ OPENVPN_PACKET ;


 int Clone (void**,size_t) ;
 size_t MIN (size_t,int ) ;
 int OPENVPN_MAX_NUMACK ;
 TYPE_1__* ZeroMalloc (int) ;

OPENVPN_PACKET *OvsNewControlPacket(UCHAR opcode, UCHAR key_id, UINT64 my_channel_id, UINT num_ack,
         UINT *ack_packet_ids, UINT64 your_channel_id, UINT packet_id,
         UINT data_size, UCHAR *data)
{
 OPENVPN_PACKET *p = ZeroMalloc(sizeof(OPENVPN_PACKET));
 UINT i;

 p->OpCode = opcode;
 p->KeyId = key_id;
 p->MySessionId = my_channel_id;
 p->NumAck = num_ack;

 for (i = 0;i < MIN(num_ack, OPENVPN_MAX_NUMACK);i++)
 {
  p->AckPacketId[i] = ack_packet_ids[i];
 }

 p->YourSessionId = your_channel_id;
 p->PacketId = packet_id;

 if (data_size != 0 && data != ((void*)0))
 {
  p->Data = Clone(data, data_size);
  p->DataSize = data_size;
 }

 return p;
}
