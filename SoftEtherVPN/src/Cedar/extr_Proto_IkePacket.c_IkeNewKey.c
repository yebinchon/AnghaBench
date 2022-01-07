
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef void UCHAR ;
struct TYPE_8__ {int CryptoId; } ;
struct TYPE_7__ {int AesKey; void* DesKey3; void* DesKey2; void* DesKey1; TYPE_2__* Crypto; scalar_t__ Size; int Data; } ;
typedef TYPE_1__ IKE_CRYPTO_KEY ;
typedef TYPE_2__ IKE_CRYPTO ;


 int AesNewKey (void*,scalar_t__) ;
 int Clone (void*,scalar_t__) ;
 int DES_KEY_SIZE ;
 void* DesNewKeyValue (void*) ;



 int IkeCheckKeySize (TYPE_2__*,scalar_t__) ;
 TYPE_1__* ZeroMalloc (int) ;

IKE_CRYPTO_KEY *IkeNewKey(IKE_CRYPTO *c, void *data, UINT size)
{
 IKE_CRYPTO_KEY *k;

 if (c == ((void*)0) || data == ((void*)0) || size == 0)
 {
  return ((void*)0);
 }

 if (IkeCheckKeySize(c, size) == 0)
 {
  return ((void*)0);
 }

 k = ZeroMalloc(sizeof(IKE_CRYPTO_KEY));
 k->Crypto = c;
 k->Data = Clone(data, size);
 k->Size = size;

 switch (k->Crypto->CryptoId)
 {
 case 128:

  k->DesKey1 = DesNewKeyValue(data);
  break;

 case 130:

  k->DesKey1 = DesNewKeyValue(((UCHAR *)data) + DES_KEY_SIZE * 0);
  k->DesKey2 = DesNewKeyValue(((UCHAR *)data) + DES_KEY_SIZE * 1);
  k->DesKey3 = DesNewKeyValue(((UCHAR *)data) + DES_KEY_SIZE * 2);
  break;

 case 129:

  k->AesKey = AesNewKey(data, size);
  break;
 }

 return k;
}
