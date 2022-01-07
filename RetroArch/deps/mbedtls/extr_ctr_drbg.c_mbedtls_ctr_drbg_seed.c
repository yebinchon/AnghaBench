
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_ctr_drbg_context ;


 int MBEDTLS_CTR_DRBG_ENTROPY_LEN ;
 int mbedtls_ctr_drbg_seed_entropy_len (int *,int (*) (void*,unsigned char*,size_t),void*,unsigned char const*,size_t,int ) ;

int mbedtls_ctr_drbg_seed( mbedtls_ctr_drbg_context *ctx,
                   int (*f_entropy)(void *, unsigned char *, size_t),
                   void *p_entropy,
                   const unsigned char *custom,
                   size_t len )
{
    return( mbedtls_ctr_drbg_seed_entropy_len( ctx, f_entropy, p_entropy, custom, len,
                                       MBEDTLS_CTR_DRBG_ENTROPY_LEN ) );
}
