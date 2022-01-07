
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int GeneralData; int NatOa; int Delete; int Notice; int CertRequest; int Cert; int Id; int Transform; int Proposal; int Sa; } ;
struct TYPE_7__ {int PayloadType; int BitArray; TYPE_1__ Payload; } ;
typedef TYPE_2__ IKE_PACKET_PAYLOAD ;
typedef int BUF ;


 int CloneBuf (int *) ;
 int Free (TYPE_2__*) ;
 int IkeParseCertPayload (int *,int *) ;
 int IkeParseCertRequestPayload (int *,int *) ;
 int IkeParseDataPayload (int *,int *) ;
 int IkeParseDeletePayload (int *,int *) ;
 int IkeParseIdPayload (int *,int *) ;
 int IkeParseNatOaPayload (int *,int *) ;
 int IkeParseNoticePayload (int *,int *) ;
 int IkeParseProposalPayload (int *,int *) ;
 int IkeParseSaPayload (int *,int *) ;
 int IkeParseTransformPayload (int *,int *) ;
 TYPE_2__* ZeroMalloc (int) ;

IKE_PACKET_PAYLOAD *IkeParsePayload(UINT payload_type, BUF *b)
{
 IKE_PACKET_PAYLOAD *p = ((void*)0);
 bool ok = 1;

 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 p = ZeroMalloc(sizeof(IKE_PACKET_PAYLOAD));
 p->PayloadType = payload_type;

 switch (p->PayloadType)
 {
 case 131:
  ok = IkeParseSaPayload(&p->Payload.Sa, b);
  break;

 case 133:
  ok = IkeParseProposalPayload(&p->Payload.Proposal, b);
  break;

 case 129:
  ok = IkeParseTransformPayload(&p->Payload.Transform, b);
  break;

 case 141:
  ok = IkeParseIdPayload(&p->Payload.Id, b);
  break;

 case 145:
  ok = IkeParseCertPayload(&p->Payload.Cert, b);
  break;

 case 144:
  ok = IkeParseCertRequestPayload(&p->Payload.CertRequest, b);
  break;

 case 134:
  ok = IkeParseNoticePayload(&p->Payload.Notice, b);
  break;

 case 143:
  ok = IkeParseDeletePayload(&p->Payload.Delete, b);
  break;

 case 137:
 case 136:
 case 135:
  ok = IkeParseNatOaPayload(&p->Payload.NatOa, b);
  break;

 case 140:
 case 142:
 case 130:
 case 132:
 case 128:
 case 139:
 case 138:
 default:
  ok = IkeParseDataPayload(&p->Payload.GeneralData, b);
  break;
 }

 if (ok == 0)
 {
  Free(p);
  p = ((void*)0);
 }
 else
 {
  p->BitArray = CloneBuf(b);
 }

 return p;
}
