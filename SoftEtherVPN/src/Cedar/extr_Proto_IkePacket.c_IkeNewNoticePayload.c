
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int USHORT ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_6__ {int ProtocolId; void* Spi; void* MessageData; int MessageType; } ;
struct TYPE_7__ {TYPE_1__ Notice; } ;
struct TYPE_8__ {TYPE_2__ Payload; } ;
typedef TYPE_3__ IKE_PACKET_PAYLOAD ;


 int IKE_PAYLOAD_NOTICE ;
 TYPE_3__* IkeNewPayload (int ) ;
 void* MemToBuf (void*,scalar_t__) ;

IKE_PACKET_PAYLOAD *IkeNewNoticePayload(UCHAR protocol_id, USHORT message_type,
          void *spi, UINT spi_size,
          void *message, UINT message_size)
{
 IKE_PACKET_PAYLOAD *p;
 if (spi == ((void*)0) && spi_size != 0)
 {
  return ((void*)0);
 }
 if (message == ((void*)0) && message_size != 0)
 {
  return ((void*)0);
 }

 p = IkeNewPayload(IKE_PAYLOAD_NOTICE);
 p->Payload.Notice.MessageType = message_type;
 p->Payload.Notice.MessageData = MemToBuf(message, message_size);
 p->Payload.Notice.Spi = MemToBuf(spi, spi_size);
 p->Payload.Notice.ProtocolId = protocol_id;

 return p;
}
