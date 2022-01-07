
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int mbedtls_aes_context ;
typedef scalar_t__ int32_t ;


 int aes_encrypt (void*,int*,int*) ;
 int aes_encrypt_deinit (void*) ;
 void* aes_encrypt_init (int const*,int) ;
 int mbedtls_aes_free (void**) ;
 int mbedtls_aes_init (void**) ;
 scalar_t__ mbedtls_aes_setkey_enc (void**,int const*,int) ;
 scalar_t__ mbedtls_internal_aes_encrypt (void**,int*,int*) ;
 int os_memcpy (int*,int const*,int) ;
 int os_memset (int*,int,int) ;

int aes_wrap(const u8 *kek, int n, const u8 *plain, u8 *cipher)
{
 u8 *a, *r, b[16];
 int i, j;




 void *ctx;


 a = cipher;
 r = cipher + 8;


 os_memset(a, 0xa6, 8);
 os_memcpy(r, plain, 8 * n);
 ctx = aes_encrypt_init(kek, 16);
 if (ctx == ((void*)0))
  return -1;
 for (j = 0; j <= 5; j++) {
  r = cipher + 8;
  for (i = 1; i <= n; i++) {
   os_memcpy(b, a, 8);
   os_memcpy(b + 8, r, 8);





   aes_encrypt(ctx, b, b);

   os_memcpy(a, b, 8);
   a[7] ^= n * j + i;
   os_memcpy(r, b + 8, 8);
   r += 8;
  }
 }



 aes_encrypt_deinit(ctx);
 return 0;
}
