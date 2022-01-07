
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int set ;
typedef scalar_t__ UINT ;
struct TYPE_21__ {int PayloadList; } ;
struct TYPE_19__ {scalar_t__ ProtocolId; TYPE_2__* Spi; int PayloadList; } ;
struct TYPE_18__ {int PayloadList; } ;
struct TYPE_15__ {int Transform; TYPE_5__ Proposal; TYPE_4__ Sa; } ;
struct TYPE_20__ {TYPE_1__ Payload; } ;
struct TYPE_17__ {scalar_t__ OnlyCapsuleModeIsInvalid; int SpiServerToClient; } ;
struct TYPE_16__ {int Size; int Buf; } ;
typedef TYPE_3__ IPSEC_SA_TRANSFORM_SETTING ;
typedef int IP ;
typedef int IKE_SERVER ;
typedef int IKE_PACKET_TRANSFORM_PAYLOAD ;
typedef TYPE_4__ IKE_PACKET_SA_PAYLOAD ;
typedef TYPE_5__ IKE_PACKET_PROPOSAL_PAYLOAD ;
typedef TYPE_6__ IKE_PACKET_PAYLOAD ;
typedef TYPE_7__ IKE_PACKET ;


 int Copy (TYPE_3__*,TYPE_3__*,int) ;
 int IKE_PAYLOAD_PROPOSAL ;
 int IKE_PAYLOAD_SA ;
 int IKE_PAYLOAD_TRANSFORM ;
 scalar_t__ IKE_PROTOCOL_ID_IPSEC_ESP ;
 TYPE_6__* IkeGetPayload (int ,int ,scalar_t__) ;
 scalar_t__ IkeGetPayloadNum (int ,int ) ;
 int READ_UINT (int ) ;
 scalar_t__ TransformPayloadToTransformSettingForIPsecSa (int *,int *,TYPE_3__*,int *) ;
 int Zero (TYPE_3__*,int) ;

bool GetBestTransformSettingForIPsecSa(IKE_SERVER *ike, IKE_PACKET *pr, IPSEC_SA_TRANSFORM_SETTING *setting, IP *server_ip)
{
 IKE_PACKET_PAYLOAD *sa_payload;
 IKE_PACKET_SA_PAYLOAD *sa;
 UINT i, num;
 bool ocmii_flag = 0;

 if (ike == ((void*)0) || pr == ((void*)0) || setting == ((void*)0) || server_ip == ((void*)0))
 {
  return 0;
 }

 Zero(setting, sizeof(IPSEC_SA_TRANSFORM_SETTING));


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


   if (proposal->ProtocolId == IKE_PROTOCOL_ID_IPSEC_ESP && proposal->Spi->Size == 4)
   {

    UINT j, num2;

    num2 = IkeGetPayloadNum(proposal->PayloadList, IKE_PAYLOAD_TRANSFORM);
    for (j = 0;j < num2;j++)
    {
     IKE_PACKET_PAYLOAD *transform_payload = IkeGetPayload(proposal->PayloadList, IKE_PAYLOAD_TRANSFORM, j);
     if (transform_payload != ((void*)0))
     {
      IKE_PACKET_TRANSFORM_PAYLOAD *transform = &transform_payload->Payload.Transform;
      IPSEC_SA_TRANSFORM_SETTING set;

      Zero(&set, sizeof(set));

      if (TransformPayloadToTransformSettingForIPsecSa(ike, transform, &set, server_ip))
      {
       Copy(setting, &set, sizeof(IPSEC_SA_TRANSFORM_SETTING));

       setting->SpiServerToClient = READ_UINT(proposal->Spi->Buf);

       return 1;
      }
      else
      {
       if (set.OnlyCapsuleModeIsInvalid)
       {
        if (ocmii_flag == 0)
        {
         Copy(setting, &set, sizeof(IPSEC_SA_TRANSFORM_SETTING));
         ocmii_flag = 1;
        }
       }
      }
     }
    }
   }
  }
 }

 return 0;
}
