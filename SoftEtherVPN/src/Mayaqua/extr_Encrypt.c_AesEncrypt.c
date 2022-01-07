
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int KeySize; int KeyValue; } ;
typedef int EVP_CIPHER_CTX ;
typedef TYPE_1__ AES_KEY_VALUE ;


 int ERR_print_errors_fp (int ) ;
 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_CIPHER_CTX_set_padding (int *,int) ;
 int EVP_EncryptFinal_ex (int *,unsigned char*,int*) ;
 int EVP_EncryptInit_ex (int *,int ,int *,int ,void*) ;
 int EVP_EncryptUpdate (int *,void*,int*,void*,int ) ;
 int EVP_aes_128_cbc () ;
 int EVP_aes_192_cbc () ;
 int EVP_aes_256_cbc () ;
 int stderr ;

void AesEncrypt(void *dest, void *src, UINT size, AES_KEY_VALUE *k, void *ivec)
{
 EVP_CIPHER_CTX *ctx = ((void*)0);
 int dest_len = 0;
 int len = 0;
 int ret = 0;


 if (dest == ((void*)0) || src == ((void*)0) || size == 0 || k == ((void*)0) || ivec == ((void*)0))
 {
  return;
 }


 ctx = EVP_CIPHER_CTX_new();

 if (!ctx)
 {
  ERR_print_errors_fp(stderr);
  return;
 }


 EVP_CIPHER_CTX_set_padding(ctx, 0);


 switch (k->KeySize)
 {
 case 16:
  ret = EVP_EncryptInit_ex(ctx, EVP_aes_128_cbc(), ((void*)0), k->KeyValue, ivec);
  break;

 case 24:
  ret = EVP_EncryptInit_ex(ctx, EVP_aes_192_cbc(), ((void*)0), k->KeyValue, ivec);
  break;

 case 32:
  ret = EVP_EncryptInit_ex(ctx, EVP_aes_256_cbc(), ((void*)0), k->KeyValue, ivec);
  break;
 }

 if (ret != 1)
 {
  ERR_print_errors_fp(stderr);
  EVP_CIPHER_CTX_free(ctx);
  return;
 }


 ret = EVP_EncryptUpdate(ctx, dest, &dest_len, src, size);

 if (ret != 1)
 {
  ERR_print_errors_fp(stderr);
  EVP_CIPHER_CTX_free(ctx);
  return;
 }


 ret = EVP_EncryptFinal_ex(ctx, (unsigned char *) dest + dest_len, &len);

 if (ret != 1)
 {
  ERR_print_errors_fp(stderr);
  EVP_CIPHER_CTX_free(ctx);
  return;
 }

 dest_len += len;


 EVP_CIPHER_CTX_free(ctx);
}
