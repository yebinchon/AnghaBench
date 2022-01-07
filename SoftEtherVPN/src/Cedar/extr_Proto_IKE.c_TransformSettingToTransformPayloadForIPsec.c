
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int HashId; int DhId; scalar_t__ LifeSeconds; scalar_t__ LifeKilobytes; int CryptoKeySize; int CapsuleMode; int CryptoId; TYPE_1__* Crypto; int * Dh; } ;
struct TYPE_4__ {scalar_t__ VariableKeySize; } ;
typedef int LIST ;
typedef TYPE_2__ IPSEC_SA_TRANSFORM_SETTING ;
typedef int IKE_SERVER ;
typedef int IKE_PACKET_PAYLOAD ;


 int Add (int *,int ) ;
 int IKE_P2_LIFE_TYPE_KILOBYTES ;
 int IKE_P2_LIFE_TYPE_SECONDS ;
 int IKE_TRANSFORM_VALUE_P2_CAPSULE ;
 int IKE_TRANSFORM_VALUE_P2_DH_GROUP ;
 int IKE_TRANSFORM_VALUE_P2_HMAC ;
 int IKE_TRANSFORM_VALUE_P2_KEY_SIZE ;
 int IKE_TRANSFORM_VALUE_P2_LIFE_TYPE ;
 int IKE_TRANSFORM_VALUE_P2_LIFE_VALUE ;
 scalar_t__ INFINITE ;
 int * IkeNewTransformPayload (int,int ,int *) ;
 int IkeNewTransformValue (int ,int) ;
 int * NewListFast (int *) ;

IKE_PACKET_PAYLOAD *TransformSettingToTransformPayloadForIPsec(IKE_SERVER *ike, IPSEC_SA_TRANSFORM_SETTING *setting)
{
 LIST *value_list;

 if (ike == ((void*)0) || setting == ((void*)0))
 {
  return ((void*)0);
 }

 value_list = NewListFast(((void*)0));

 Add(value_list, IkeNewTransformValue(IKE_TRANSFORM_VALUE_P2_HMAC, setting->HashId));

 if (setting->Dh != ((void*)0))
 {
  Add(value_list, IkeNewTransformValue(IKE_TRANSFORM_VALUE_P2_DH_GROUP, setting->DhId));
 }

 if (setting->LifeSeconds != INFINITE)
 {
  Add(value_list, IkeNewTransformValue(IKE_TRANSFORM_VALUE_P2_LIFE_TYPE, IKE_P2_LIFE_TYPE_SECONDS));
  Add(value_list, IkeNewTransformValue(IKE_TRANSFORM_VALUE_P2_LIFE_VALUE, setting->LifeSeconds));
 }

 if (setting->LifeKilobytes != INFINITE)
 {
  Add(value_list, IkeNewTransformValue(IKE_TRANSFORM_VALUE_P2_LIFE_TYPE, IKE_P2_LIFE_TYPE_KILOBYTES));
  Add(value_list, IkeNewTransformValue(IKE_TRANSFORM_VALUE_P2_LIFE_VALUE, setting->LifeKilobytes));
 }

 if (setting->Crypto->VariableKeySize)
 {
  Add(value_list, IkeNewTransformValue(IKE_TRANSFORM_VALUE_P2_KEY_SIZE, setting->CryptoKeySize * 8));
 }

 Add(value_list, IkeNewTransformValue(IKE_TRANSFORM_VALUE_P2_CAPSULE, setting->CapsuleMode));

 return IkeNewTransformPayload(1, setting->CryptoId, value_list);
}
