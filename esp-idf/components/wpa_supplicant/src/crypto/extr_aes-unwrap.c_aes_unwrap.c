
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int mbedtls_aes_context ;
typedef scalar_t__ int32_t ;


 int aes_decrypt (void*,int*,int*) ;
 int aes_decrypt_deinit (void*) ;
 void* aes_decrypt_init (int const*,int) ;
 int mbedtls_aes_free (void**) ;
 int mbedtls_aes_init (void**) ;
 scalar_t__ mbedtls_aes_setkey_dec (void**,int const*,int) ;
 scalar_t__ mbedtls_internal_aes_decrypt (void**,int*,int*) ;
 int os_memcpy (int*,int const*,int) ;

int
aes_unwrap(const u8 *kek, int n, const u8 *cipher, u8 *plain)
{
 u8 a[8], *r, b[16];
 int i, j;




 void *ctx;



 os_memcpy(a, cipher, 8);
 r = plain;
 os_memcpy(r, cipher + 8, 8 * n);
 ctx = aes_decrypt_init(kek, 16);
 if (ctx == ((void*)0))
  return -1;
 for (j = 5; j >= 0; j--) {
  r = plain + (n - 1) * 8;
  for (i = n; i >= 1; i--) {
   os_memcpy(b, a, 8);
   b[7] ^= n * j + i;

   os_memcpy(b + 8, r, 8);



   aes_decrypt(ctx, b, b);

   os_memcpy(a, b, 8);
   os_memcpy(r, b + 8, 8);
   r -= 8;
  }
 }



 aes_decrypt_deinit(ctx);







 for (i = 0; i < 8; i++) {
  if (a[i] != 0xa6)
   return -1;
 }

 return 0;
}
