
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int USHORT ;
typedef scalar_t__ UINT ;
typedef void* UCHAR ;
struct TYPE_7__ {void* Type; void* ProtocolId; int Port; int IdData; } ;
struct TYPE_6__ {TYPE_2__ Id; } ;
struct TYPE_8__ {TYPE_1__ Payload; } ;
typedef TYPE_3__ IKE_PACKET_PAYLOAD ;


 int IKE_PAYLOAD_ID ;
 TYPE_3__* IkeNewPayload (int ) ;
 int MemToBuf (void*,scalar_t__) ;

IKE_PACKET_PAYLOAD *IkeNewIdPayload(UCHAR id_type, UCHAR protocol_id, USHORT port, void *id_data, UINT id_size)
{
 IKE_PACKET_PAYLOAD *p;
 if (id_data == ((void*)0) && id_size != 0)
 {
  return ((void*)0);
 }

 p = IkeNewPayload(IKE_PAYLOAD_ID);
 p->Payload.Id.IdData = MemToBuf(id_data, id_size);
 p->Payload.Id.Port = port;
 p->Payload.Id.ProtocolId = protocol_id;
 p->Payload.Id.Type = id_type;

 return p;
}
