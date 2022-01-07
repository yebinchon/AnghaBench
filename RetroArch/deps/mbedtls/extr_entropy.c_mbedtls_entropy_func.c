
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mbedtls_sha512_context ;
typedef int mbedtls_sha256_context ;
struct TYPE_6__ {int initial_entropy_run; int source_count; unsigned char accumulator; int mutex; TYPE_1__* source; } ;
typedef TYPE_2__ mbedtls_entropy_context ;
struct TYPE_5__ {scalar_t__ size; scalar_t__ threshold; } ;


 int ENTROPY_MAX_LOOP ;
 int MBEDTLS_ENTROPY_BLOCK_SIZE ;
 int MBEDTLS_ERR_ENTROPY_SOURCE_FAILED ;
 int MBEDTLS_ERR_THREADING_MUTEX_ERROR ;
 int entropy_gather_internal (TYPE_2__*) ;
 int mbedtls_entropy_update_nv_seed (TYPE_2__*) ;
 int mbedtls_mutex_lock (int *) ;
 scalar_t__ mbedtls_mutex_unlock (int *) ;
 int mbedtls_sha256 (unsigned char*,int,unsigned char*,int ) ;
 int mbedtls_sha256_finish (unsigned char*,unsigned char*) ;
 int mbedtls_sha256_starts (unsigned char*,int ) ;
 int mbedtls_sha256_update (unsigned char*,unsigned char*,int) ;
 int mbedtls_sha512 (unsigned char*,int,unsigned char*,int ) ;
 int mbedtls_sha512_finish (unsigned char*,unsigned char*) ;
 int mbedtls_sha512_starts (unsigned char*,int ) ;
 int mbedtls_sha512_update (unsigned char*,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,int) ;

int mbedtls_entropy_func( void *data, unsigned char *output, size_t len )
{
    int ret, count = 0, i, done;
    mbedtls_entropy_context *ctx = (mbedtls_entropy_context *) data;
    unsigned char buf[MBEDTLS_ENTROPY_BLOCK_SIZE];

    if( len > MBEDTLS_ENTROPY_BLOCK_SIZE )
        return( MBEDTLS_ERR_ENTROPY_SOURCE_FAILED );
    do
    {
        if( count++ > ENTROPY_MAX_LOOP )
        {
            ret = MBEDTLS_ERR_ENTROPY_SOURCE_FAILED;
            goto exit;
        }

        if( ( ret = entropy_gather_internal( ctx ) ) != 0 )
            goto exit;

        done = 1;
        for( i = 0; i < ctx->source_count; i++ )
            if( ctx->source[i].size < ctx->source[i].threshold )
                done = 0;
    }
    while( ! done );

    memset( buf, 0, MBEDTLS_ENTROPY_BLOCK_SIZE );
    mbedtls_sha256_finish( &ctx->accumulator, buf );




    memset( &ctx->accumulator, 0, sizeof( mbedtls_sha256_context ) );
    mbedtls_sha256_starts( &ctx->accumulator, 0 );
    mbedtls_sha256_update( &ctx->accumulator, buf, MBEDTLS_ENTROPY_BLOCK_SIZE );




    mbedtls_sha256( buf, MBEDTLS_ENTROPY_BLOCK_SIZE, buf, 0 );


    for( i = 0; i < ctx->source_count; i++ )
        ctx->source[i].size = 0;

    memcpy( output, buf, len );

    ret = 0;

exit:





    return( ret );
}
