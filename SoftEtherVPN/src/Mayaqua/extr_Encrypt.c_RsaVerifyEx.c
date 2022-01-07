
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hash_data ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_3__ {int private_key; int pkey; } ;
typedef int RSA ;
typedef TYPE_1__ K ;


 scalar_t__ Cmp (int *,int *,int) ;
 int * EVP_PKEY_get0_RSA (int ) ;
 int Free (int *) ;
 int HashForSign (int *,int,void*,int) ;
 int MAX (int,int) ;
 int RSA_KEY_SIZE ;
 int RSA_PKCS1_PADDING ;
 scalar_t__ RSA_public_decrypt (int,void*,int *,int *,int ) ;
 int RSA_size (int *) ;
 int SIGN_HASH_SIZE ;
 int * ZeroMalloc (int) ;

bool RsaVerifyEx(void *data, UINT data_size, void *sign, K *k, UINT bits)
{
 UCHAR hash_data[SIGN_HASH_SIZE];
 UCHAR *decrypt_data;
 RSA *rsa;
 UINT rsa_size;

 if (data == ((void*)0) || sign == ((void*)0) || k == ((void*)0) || k->private_key != 0)
 {
  return 0;
 }
 if (bits == 0)
 {
  bits = RSA_KEY_SIZE;
 }

 rsa = EVP_PKEY_get0_RSA(k->pkey);
 if (rsa == ((void*)0))
 {
  return 0;
 }


 if (HashForSign(hash_data, sizeof(hash_data), data, data_size) == 0)
 {
  return 0;
 }

 rsa_size = RSA_size(rsa);
 rsa_size = MAX(rsa_size, 1024);
 decrypt_data = ZeroMalloc(rsa_size);


 if (RSA_public_decrypt(bits / 8, sign, decrypt_data, rsa, RSA_PKCS1_PADDING) <= 0)
 {
  Free(decrypt_data);
  return 0;
 }


 if (Cmp(decrypt_data, hash_data, SIGN_HASH_SIZE) != 0)
 {
  Free(decrypt_data);
  return 0;
 }

 Free(decrypt_data);

 return 1;
}
