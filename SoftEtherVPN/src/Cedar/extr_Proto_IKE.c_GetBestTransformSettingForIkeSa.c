
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_15__ {int PayloadList; } ;
struct TYPE_11__ {scalar_t__ TransformId; } ;
struct TYPE_13__ {scalar_t__ ProtocolId; int PayloadList; } ;
struct TYPE_12__ {int PayloadList; } ;
struct TYPE_10__ {TYPE_2__ Transform; TYPE_4__ Proposal; TYPE_3__ Sa; } ;
struct TYPE_14__ {TYPE_1__ Payload; } ;
typedef int IKE_SERVER ;
typedef int IKE_SA_TRANSFORM_SETTING ;
typedef TYPE_2__ IKE_PACKET_TRANSFORM_PAYLOAD ;
typedef TYPE_3__ IKE_PACKET_SA_PAYLOAD ;
typedef TYPE_4__ IKE_PACKET_PROPOSAL_PAYLOAD ;
typedef TYPE_5__ IKE_PACKET_PAYLOAD ;
typedef TYPE_6__ IKE_PACKET ;


 int Copy (int *,int *,int) ;
 int IKE_PAYLOAD_PROPOSAL ;
 int IKE_PAYLOAD_SA ;
 int IKE_PAYLOAD_TRANSFORM ;
 scalar_t__ IKE_PROTOCOL_ID_IKE ;
 scalar_t__ IKE_TRANSFORM_ID_P1_KEY_IKE ;
 TYPE_5__* IkeGetPayload (int ,int ,scalar_t__) ;
 scalar_t__ IkeGetPayloadNum (int ,int ) ;
 scalar_t__ TransformPayloadToTransformSettingForIkeSa (int *,TYPE_2__*,int *) ;

bool GetBestTransformSettingForIkeSa(IKE_SERVER *ike, IKE_PACKET *pr, IKE_SA_TRANSFORM_SETTING *setting)
{
 IKE_PACKET_PAYLOAD *sa_payload;
 IKE_PACKET_SA_PAYLOAD *sa;
 UINT i, num;

 if (ike == ((void*)0) || pr == ((void*)0) || setting == ((void*)0))
 {
  return 0;
 }


 sa_payload = IkeGetPayload(pr->PayloadList, IKE_PAYLOAD_SA, 0);
 if (sa_payload == ((void*)0))
 {
  return 0;
 }

 sa = &sa_payload->Payload.Sa;


 num = IkeGetPayloadNum(sa->PayloadList, IKE_PAYLOAD_PROPOSAL);
 for (i = 0;i < num;i++)
 {
  IKE_PACKET_PAYLOAD *proposal_payload = IkeGetPayload(sa->PayloadList, IKE_PAYLOAD_PROPOSAL, i);

  if (proposal_payload != ((void*)0))
  {
   IKE_PACKET_PROPOSAL_PAYLOAD *proposal = &proposal_payload->Payload.Proposal;


   if (proposal->ProtocolId == IKE_PROTOCOL_ID_IKE)
   {

    UINT j, num2;

    num2 = IkeGetPayloadNum(proposal->PayloadList, IKE_PAYLOAD_TRANSFORM);
    for (j = 0;j < num2;j++)
    {
     IKE_PACKET_PAYLOAD *transform_payload = IkeGetPayload(proposal->PayloadList, IKE_PAYLOAD_TRANSFORM, j);
     if (transform_payload != ((void*)0))
     {
      IKE_PACKET_TRANSFORM_PAYLOAD *transform = &transform_payload->Payload.Transform;

      if (transform->TransformId == IKE_TRANSFORM_ID_P1_KEY_IKE)
      {
       IKE_SA_TRANSFORM_SETTING set;

       if (TransformPayloadToTransformSettingForIkeSa(ike, transform, &set))
       {
        Copy(setting, &set, sizeof(IKE_SA_TRANSFORM_SETTING));
        return 1;
       }
      }
     }
    }
   }
  }
 }

 return 0;
}
