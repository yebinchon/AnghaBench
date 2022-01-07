
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef void* UCHAR ;
struct TYPE_7__ {int * PayloadList; int Spi; void* ProtocolId; void* Number; } ;
struct TYPE_6__ {TYPE_2__ Proposal; } ;
struct TYPE_8__ {TYPE_1__ Payload; } ;
typedef int LIST ;
typedef TYPE_3__ IKE_PACKET_PAYLOAD ;


 int IKE_PAYLOAD_PROPOSAL ;
 TYPE_3__* IkeNewPayload (int ) ;
 int MemToBuf (void*,scalar_t__) ;

IKE_PACKET_PAYLOAD *IkeNewProposalPayload(UCHAR number, UCHAR protocol_id, void *spi, UINT spi_size, LIST *payload_list)
{
 IKE_PACKET_PAYLOAD *p;
 if (payload_list == ((void*)0) || (spi == ((void*)0) && spi_size != 0))
 {
  return ((void*)0);
 }

 p = IkeNewPayload(IKE_PAYLOAD_PROPOSAL);
 p->Payload.Proposal.Number = number;
 p->Payload.Proposal.ProtocolId = protocol_id;
 p->Payload.Proposal.Spi = MemToBuf(spi, spi_size);
 p->Payload.Proposal.PayloadList = payload_list;

 return p;
}
