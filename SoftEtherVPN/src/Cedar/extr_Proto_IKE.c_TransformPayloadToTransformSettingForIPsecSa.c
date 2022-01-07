
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef scalar_t__ UINT ;
struct TYPE_17__ {int TransformId; } ;
struct TYPE_16__ {int Engine; TYPE_1__* IPsec; } ;
struct TYPE_15__ {int CryptoKeySize; int OnlyCapsuleModeIsInvalid; scalar_t__ CapsuleMode; TYPE_11__* Crypto; int * Hash; void* DhId; int Dh; void* HashId; int CryptoId; void* LifeKilobytes; void* LifeSeconds; } ;
struct TYPE_14__ {int UdpListener; } ;
struct TYPE_13__ {int* KeySizes; scalar_t__ VariableKeySize; } ;
typedef TYPE_2__ IPSEC_SA_TRANSFORM_SETTING ;
typedef int IP ;
typedef TYPE_3__ IKE_SERVER ;
typedef TYPE_4__ IKE_PACKET_TRANSFORM_PAYLOAD ;


 TYPE_11__* GetIkeCrypto (int ,int,int ) ;
 int GetIkeDh (int ,int,void*) ;
 int * GetIkeHash (int ,int,void*) ;
 scalar_t__ IKE_P2_CAPSULE_NAT_TRANSPORT_1 ;
 scalar_t__ IKE_P2_CAPSULE_NAT_TRANSPORT_2 ;
 scalar_t__ IKE_P2_CAPSULE_NAT_TUNNEL_1 ;
 scalar_t__ IKE_P2_CAPSULE_NAT_TUNNEL_2 ;
 scalar_t__ IKE_P2_CAPSULE_TRANSPORT ;
 scalar_t__ IKE_P2_CAPSULE_TUNNEL ;


 int IKE_TRANSFORM_VALUE_P2_CAPSULE ;
 int IKE_TRANSFORM_VALUE_P2_DH_GROUP ;
 int IKE_TRANSFORM_VALUE_P2_HMAC ;
 int IKE_TRANSFORM_VALUE_P2_KEY_SIZE ;
 int IKE_TRANSFORM_VALUE_P2_LIFE_TYPE ;
 int IKE_TRANSFORM_VALUE_P2_LIFE_VALUE ;
 void* INFINITE ;
 int IPSEC_PORT_IPSEC_ESP_RAW ;
 int IkeCheckKeySize (TYPE_11__*,int) ;
 void* IkeGetTransformValue (TYPE_4__*,int ,scalar_t__) ;
 scalar_t__ IkeGetTransformValueNum (TYPE_4__*,int ) ;
 int IsUdpPortOpened (int ,int *,int ) ;
 int Zero (TYPE_2__*,int) ;

bool TransformPayloadToTransformSettingForIPsecSa(IKE_SERVER *ike, IKE_PACKET_TRANSFORM_PAYLOAD *transform, IPSEC_SA_TRANSFORM_SETTING *setting, IP *server_ip)
{
 UINT i;
 UINT capsule_mode;
 bool is_esp_supported;

 if (ike == ((void*)0) || transform == ((void*)0) || setting == ((void*)0) || server_ip == ((void*)0))
 {
  return 0;
 }

 is_esp_supported = IsUdpPortOpened(ike->IPsec->UdpListener, server_ip, IPSEC_PORT_IPSEC_ESP_RAW);

 Zero(setting, sizeof(IPSEC_SA_TRANSFORM_SETTING));

 setting->CryptoId = transform->TransformId;
 setting->HashId = IkeGetTransformValue(transform, IKE_TRANSFORM_VALUE_P2_HMAC, 0);

 setting->DhId = IkeGetTransformValue(transform, IKE_TRANSFORM_VALUE_P2_DH_GROUP, 0);

 setting->LifeKilobytes = INFINITE;
 setting->LifeSeconds = INFINITE;

 for (i = 0;i < IkeGetTransformValueNum(transform, IKE_TRANSFORM_VALUE_P2_LIFE_TYPE);i++)
 {
  UINT life_type = IkeGetTransformValue(transform, IKE_TRANSFORM_VALUE_P2_LIFE_TYPE, i);

  switch (life_type)
  {
  case 128:
   setting->LifeSeconds = IkeGetTransformValue(transform, IKE_TRANSFORM_VALUE_P2_LIFE_VALUE, i);
   break;

  case 129:
   setting->LifeKilobytes = IkeGetTransformValue(transform, IKE_TRANSFORM_VALUE_P2_LIFE_VALUE, i);
   break;

  default:

   return 0;
  }
 }

 setting->Crypto = GetIkeCrypto(ike->Engine, 1, setting->CryptoId);
 setting->Hash = GetIkeHash(ike->Engine, 1, setting->HashId);
 setting->Dh = GetIkeDh(ike->Engine, 1, setting->DhId);

 if (setting->Crypto == ((void*)0) || setting->Hash == ((void*)0))
 {

  return 0;
 }

 if (setting->Crypto->VariableKeySize)
 {

  setting->CryptoKeySize = IkeGetTransformValue(transform, IKE_TRANSFORM_VALUE_P2_KEY_SIZE, 0);


  setting->CryptoKeySize = setting->CryptoKeySize / 8;

  if (setting->CryptoKeySize == 0 || IkeCheckKeySize(setting->Crypto, setting->CryptoKeySize) == 0)
  {

   return 0;
  }
 }
 else
 {

  setting->CryptoKeySize = setting->Crypto->KeySizes[0];
 }

 capsule_mode = IkeGetTransformValue(transform, IKE_TRANSFORM_VALUE_P2_CAPSULE, 0);
 if (capsule_mode != IKE_P2_CAPSULE_NAT_TUNNEL_1 && capsule_mode != IKE_P2_CAPSULE_NAT_TUNNEL_2 &&
  capsule_mode != IKE_P2_CAPSULE_NAT_TRANSPORT_1 && capsule_mode != IKE_P2_CAPSULE_NAT_TRANSPORT_2)
 {

  if (capsule_mode == IKE_P2_CAPSULE_TRANSPORT || capsule_mode == IKE_P2_CAPSULE_TUNNEL)
  {
   if (is_esp_supported == 0)
   {
    setting->OnlyCapsuleModeIsInvalid = 1;
    return 0;
   }
   else
   {

   }
  }
  else
  {
   return 0;
  }
 }

 setting->CapsuleMode = capsule_mode;

 return 1;
}
