
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_6__ {int * SpiList; int ProtocolId; } ;
struct TYPE_7__ {TYPE_1__ Delete; } ;
struct TYPE_8__ {TYPE_2__ Payload; } ;
typedef int LIST ;
typedef TYPE_3__ IKE_PACKET_PAYLOAD ;


 int IKE_PAYLOAD_DELETE ;
 TYPE_3__* IkeNewPayload (int ) ;

IKE_PACKET_PAYLOAD *IkeNewDeletePayload(UCHAR protocol_id, LIST *spi_list)
{
 IKE_PACKET_PAYLOAD *p;
 if (spi_list == ((void*)0))
 {
  return ((void*)0);
 }

 p = IkeNewPayload(IKE_PAYLOAD_DELETE);
 p->Payload.Delete.ProtocolId = protocol_id;
 p->Payload.Delete.SpiList = spi_list;

 return p;
}
