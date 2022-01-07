
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hash ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_3__ {int pkey; } ;
typedef TYPE_1__ K ;


 scalar_t__ EVP_PKEY_RSA ;
 scalar_t__ EVP_PKEY_base_id (int ) ;
 int EVP_PKEY_get0_RSA (int ) ;
 int HashForSign (int *,int,void*,int) ;
 int RSA_KEY_SIZE ;
 int RSA_PKCS1_PADDING ;
 scalar_t__ RSA_private_encrypt (int,int *,void*,int ,int ) ;
 int SIGN_HASH_SIZE ;
 int Zero (void*,int) ;

bool RsaSignEx(void *dst, void *src, UINT size, K *k, UINT bits)
{
 UCHAR hash[SIGN_HASH_SIZE];

 if (dst == ((void*)0) || src == ((void*)0) || k == ((void*)0) || EVP_PKEY_base_id(k->pkey) != EVP_PKEY_RSA)
 {
  return 0;
 }
 if (bits == 0)
 {
  bits = RSA_KEY_SIZE;
 }

 Zero(dst, bits / 8);


 if (HashForSign(hash, sizeof(hash), src, size) == 0)
 {
  return 0;
 }


 if (RSA_private_encrypt(sizeof(hash), hash, dst, EVP_PKEY_get0_RSA(k->pkey), RSA_PKCS1_PADDING) <= 0)
 {
  return 0;
 }

 return 1;
}
