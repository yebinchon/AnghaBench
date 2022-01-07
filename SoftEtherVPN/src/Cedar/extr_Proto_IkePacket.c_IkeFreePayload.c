
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int GeneralData; int Delete; int Notice; int CertRequest; int Cert; int Id; int Transform; int Proposal; int Sa; } ;
struct TYPE_6__ {int PayloadType; int * BitArray; TYPE_1__ Payload; } ;
typedef TYPE_2__ IKE_PACKET_PAYLOAD ;


 int Free (TYPE_2__*) ;
 int FreeBuf (int *) ;
 int IkeFreeCertPayload (int *) ;
 int IkeFreeCertRequestPayload (int *) ;
 int IkeFreeDataPayload (int *) ;
 int IkeFreeDeletePayload (int *) ;
 int IkeFreeIdPayload (int *) ;
 int IkeFreeNoticePayload (int *) ;
 int IkeFreeProposalPayload (int *) ;
 int IkeFreeSaPayload (int *) ;
 int IkeFreeTransformPayload (int *) ;

void IkeFreePayload(IKE_PACKET_PAYLOAD *p)
{

 if (p == ((void*)0))
 {
  return;
 }

 switch (p->PayloadType)
 {
 case 131:
  IkeFreeSaPayload(&p->Payload.Sa);
  break;

 case 133:
  IkeFreeProposalPayload(&p->Payload.Proposal);
  break;

 case 129:
  IkeFreeTransformPayload(&p->Payload.Transform);
  break;

 case 141:
  IkeFreeIdPayload(&p->Payload.Id);
  break;

 case 145:
  IkeFreeCertPayload(&p->Payload.Cert);
  break;

 case 144:
  IkeFreeCertRequestPayload(&p->Payload.CertRequest);
  break;

 case 134:
  IkeFreeNoticePayload(&p->Payload.Notice);
  break;

 case 143:
  IkeFreeDeletePayload(&p->Payload.Delete);
  break;

 case 137:
 case 136:
 case 135:

  break;

 case 140:
 case 142:
 case 130:
 case 132:
 case 128:
 case 139:
 case 138:
 default:
  IkeFreeDataPayload(&p->Payload.GeneralData);
  break;
 }

 if (p->BitArray != ((void*)0))
 {
  FreeBuf(p->BitArray);
 }

 Free(p);
}
