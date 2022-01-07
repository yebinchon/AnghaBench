
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int GeneralData; int NatOa; int Delete; int Notice; int CertRequest; int Cert; int Id; int Transform; int Proposal; int Sa; } ;
struct TYPE_5__ {int PayloadType; int * BitArray; TYPE_1__ Payload; } ;
typedef TYPE_2__ IKE_PACKET_PAYLOAD ;
typedef int BUF ;


 int * CloneBuf (int *) ;
 int FreeBuf (int *) ;
 int * IkeBuildCertPayload (int *) ;
 int * IkeBuildCertRequestPayload (int *) ;
 int * IkeBuildDataPayload (int *) ;
 int * IkeBuildDeletePayload (int *) ;
 int * IkeBuildIdPayload (int *) ;
 int * IkeBuildNatOaPayload (int *) ;
 int * IkeBuildNoticePayload (int *) ;
 int * IkeBuildProposalPayload (int *) ;
 int * IkeBuildSaPayload (int *) ;
 int * IkeBuildTransformPayload (int *) ;

BUF *IkeBuildPayload(IKE_PACKET_PAYLOAD *p)
{
 BUF *b = ((void*)0);

 if (p == ((void*)0))
 {
  return ((void*)0);
 }

 switch (p->PayloadType)
 {
 case 131:
  b = IkeBuildSaPayload(&p->Payload.Sa);
  break;

 case 133:
  b = IkeBuildProposalPayload(&p->Payload.Proposal);
  break;

 case 129:
  b = IkeBuildTransformPayload(&p->Payload.Transform);
  break;

 case 141:
  b = IkeBuildIdPayload(&p->Payload.Id);
  break;

 case 145:
  b = IkeBuildCertPayload(&p->Payload.Cert);
  break;

 case 144:
  b = IkeBuildCertRequestPayload(&p->Payload.CertRequest);
  break;

 case 134:
  b = IkeBuildNoticePayload(&p->Payload.Notice);
  break;

 case 143:
  b = IkeBuildDeletePayload(&p->Payload.Delete);
  break;

 case 137:
 case 136:
 case 135:
  b = IkeBuildNatOaPayload(&p->Payload.NatOa);
  break;

 case 140:
 case 142:
 case 130:
 case 132:
 case 128:
 case 139:
 case 138:
 default:
  b = IkeBuildDataPayload(&p->Payload.GeneralData);
  break;
 }

 if (b != ((void*)0))
 {
  if (p->BitArray != ((void*)0))
  {
   FreeBuf(p->BitArray);
  }
  p->BitArray = CloneBuf(b);
 }

 return b;
}
