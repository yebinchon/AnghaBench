
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int havege_data; int accumulator; int mutex; } ;
typedef TYPE_1__ mbedtls_entropy_context ;


 int MBEDTLS_ENTROPY_BLOCK_SIZE ;
 int MBEDTLS_ENTROPY_MIN_HARDCLOCK ;
 int MBEDTLS_ENTROPY_MIN_HARDWARE ;
 int MBEDTLS_ENTROPY_MIN_HAVEGE ;
 int MBEDTLS_ENTROPY_MIN_PLATFORM ;
 int MBEDTLS_ENTROPY_SOURCE_STRONG ;
 int MBEDTLS_ENTROPY_SOURCE_WEAK ;
 int mbedtls_entropy_add_source (TYPE_1__*,int ,int *,int,int ) ;
 int mbedtls_hardclock_poll ;
 int mbedtls_hardware_poll ;
 int mbedtls_havege_init (int *) ;
 int mbedtls_havege_poll ;
 int mbedtls_mutex_init (int *) ;
 int mbedtls_null_entropy_poll ;
 int mbedtls_nv_seed_poll ;
 int mbedtls_platform_entropy_poll ;
 int mbedtls_sha256_starts (int *,int ) ;
 int mbedtls_sha512_starts (int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;

void mbedtls_entropy_init( mbedtls_entropy_context *ctx )
{
    memset( ctx, 0, sizeof(mbedtls_entropy_context) );
    mbedtls_sha256_starts( &ctx->accumulator, 0 );
    mbedtls_entropy_add_source( ctx, mbedtls_platform_entropy_poll, ((void*)0),
                                MBEDTLS_ENTROPY_MIN_PLATFORM,
                                MBEDTLS_ENTROPY_SOURCE_STRONG );
}
