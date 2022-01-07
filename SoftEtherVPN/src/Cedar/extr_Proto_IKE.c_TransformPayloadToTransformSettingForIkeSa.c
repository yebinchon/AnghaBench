
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_10__ {int* KeySizes; scalar_t__ VariableKeySize; } ;
struct TYPE_9__ {int CryptoKeySize; TYPE_6__* Crypto; int * Dh; int * Hash; void* DhId; void* HashId; void* CryptoId; void* LifeKilobytes; void* LifeSeconds; } ;
struct TYPE_8__ {int Engine; } ;
typedef TYPE_1__ IKE_SERVER ;
typedef TYPE_2__ IKE_SA_TRANSFORM_SETTING ;
typedef int IKE_PACKET_TRANSFORM_PAYLOAD ;


 TYPE_6__* GetIkeCrypto (int ,int,void*) ;
 int * GetIkeDh (int ,int,void*) ;
 int * GetIkeHash (int ,int,void*) ;
 void* IKE_P1_AUTH_METHOD_PRESHAREDKEY ;


 int IKE_TRANSFORM_VALUE_P1_AUTH_METHOD ;
 int IKE_TRANSFORM_VALUE_P1_CRYPTO ;
 int IKE_TRANSFORM_VALUE_P1_DH_GROUP ;
 int IKE_TRANSFORM_VALUE_P1_HASH ;
 int IKE_TRANSFORM_VALUE_P1_KET_SIZE ;
 int IKE_TRANSFORM_VALUE_P1_LIFE_TYPE ;
 int IKE_TRANSFORM_VALUE_P1_LIFE_VALUE ;
 void* INFINITE ;
 int IkeCheckKeySize (TYPE_6__*,int) ;
 void* IkeGetTransformValue (int *,int ,scalar_t__) ;
 scalar_t__ IkeGetTransformValueNum (int *,int ) ;
 int Zero (TYPE_2__*,int) ;

bool TransformPayloadToTransformSettingForIkeSa(IKE_SERVER *ike, IKE_PACKET_TRANSFORM_PAYLOAD *transform, IKE_SA_TRANSFORM_SETTING *setting)
{
 UINT i;

 if (ike == ((void*)0) || transform == ((void*)0) || setting == ((void*)0))
 {
  return 0;
 }

 Zero(setting, sizeof(IKE_SA_TRANSFORM_SETTING));

 setting->CryptoId = IkeGetTransformValue(transform, IKE_TRANSFORM_VALUE_P1_CRYPTO, 0);
 setting->HashId = IkeGetTransformValue(transform, IKE_TRANSFORM_VALUE_P1_HASH, 0);

 if (IkeGetTransformValue(transform, IKE_TRANSFORM_VALUE_P1_AUTH_METHOD, 0) != IKE_P1_AUTH_METHOD_PRESHAREDKEY)
 {

  return 0;
 }

 setting->DhId = IkeGetTransformValue(transform, IKE_TRANSFORM_VALUE_P1_DH_GROUP, 0);

 setting->LifeKilobytes = INFINITE;
 setting->LifeSeconds = INFINITE;

 for (i = 0;i < IkeGetTransformValueNum(transform, IKE_TRANSFORM_VALUE_P1_LIFE_TYPE);i++)
 {
  UINT life_type = IkeGetTransformValue(transform, IKE_TRANSFORM_VALUE_P1_LIFE_TYPE, i);

  switch (life_type)
  {
  case 128:
   setting->LifeSeconds = IkeGetTransformValue(transform, IKE_TRANSFORM_VALUE_P1_LIFE_VALUE, i);
   break;

  case 129:
   setting->LifeKilobytes = IkeGetTransformValue(transform, IKE_TRANSFORM_VALUE_P1_LIFE_VALUE, i);
   break;

  default:

   return 0;
  }
 }

 setting->Crypto = GetIkeCrypto(ike->Engine, 0, setting->CryptoId);
 setting->Hash = GetIkeHash(ike->Engine, 0, setting->HashId);
 setting->Dh = GetIkeDh(ike->Engine, 0, setting->DhId);

 if (setting->Crypto == ((void*)0) || setting->Hash == ((void*)0) || setting->Dh == ((void*)0))
 {

  return 0;
 }

 if (setting->Crypto->VariableKeySize)
 {

  setting->CryptoKeySize = IkeGetTransformValue(transform, IKE_TRANSFORM_VALUE_P1_KET_SIZE, 0);


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

 return 1;
}
