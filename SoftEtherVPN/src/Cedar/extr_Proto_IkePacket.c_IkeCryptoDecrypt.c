
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int AesKey; int DesKey3; int DesKey2; int DesKey1; TYPE_1__* Crypto; } ;
struct TYPE_4__ {int BlockSize; int CryptoId; } ;
typedef TYPE_2__ IKE_CRYPTO_KEY ;


 int AesDecrypt (void*,void*,int,int ,void*) ;
 int Des3Decrypt2 (void*,void*,int,int ,int ,int ,void*) ;
 int DesDecrypt (void*,void*,int,int ,void*) ;



 int Zero (void*,int) ;

void IkeCryptoDecrypt(IKE_CRYPTO_KEY *k, void *dst, void *src, UINT size, void *ivec)
{

 if (k == ((void*)0) || dst == ((void*)0) || src == ((void*)0) || size == 0 || ivec == ((void*)0))
 {
  Zero(dst, size);
  return;
 }

 if ((size % k->Crypto->BlockSize) != 0)
 {
  Zero(dst, size);
  return;
 }

 switch (k->Crypto->CryptoId)
 {
 case 128:
  DesDecrypt(dst, src, size, k->DesKey1, ivec);
  break;

 case 130:
  Des3Decrypt2(dst, src, size, k->DesKey1, k->DesKey2, k->DesKey3, ivec);
  break;

 case 129:
  AesDecrypt(dst, src, size, k->AesKey, ivec);
  break;

 default:

  Zero(dst, size);
  break;
 }
}
