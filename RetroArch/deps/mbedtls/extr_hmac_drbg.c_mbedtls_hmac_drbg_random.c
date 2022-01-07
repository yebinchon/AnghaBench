
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; } ;
typedef TYPE_1__ mbedtls_hmac_drbg_context ;


 int MBEDTLS_ERR_THREADING_MUTEX_ERROR ;
 int mbedtls_hmac_drbg_random_with_add (TYPE_1__*,unsigned char*,size_t,int *,int ) ;
 int mbedtls_mutex_lock (int *) ;
 scalar_t__ mbedtls_mutex_unlock (int *) ;

int mbedtls_hmac_drbg_random( void *p_rng, unsigned char *output, size_t out_len )
{
    int ret;
    mbedtls_hmac_drbg_context *ctx = (mbedtls_hmac_drbg_context *) p_rng;






    ret = mbedtls_hmac_drbg_random_with_add( ctx, output, out_len, ((void*)0), 0 );






    return( ret );
}
