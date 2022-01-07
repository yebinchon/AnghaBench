
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * PayloadList; int * Spi; } ;
typedef TYPE_1__ IKE_PACKET_PROPOSAL_PAYLOAD ;


 int FreeBuf (int *) ;
 int IkeFreePayloadList (int *) ;

void IkeFreeProposalPayload(IKE_PACKET_PROPOSAL_PAYLOAD *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 if (t->Spi != ((void*)0))
 {
  FreeBuf(t->Spi);
  t->Spi = ((void*)0);
 }

 if (t->PayloadList != ((void*)0))
 {
  IkeFreePayloadList(t->PayloadList);
  t->PayloadList = ((void*)0);
 }
}
