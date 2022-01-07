
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int accumulator; } ;
typedef TYPE_1__ mbedtls_entropy_context ;


 int MBEDTLS_ENTROPY_BLOCK_SIZE ;
 int mbedtls_sha256 (unsigned char const*,size_t,unsigned char*,int ) ;
 int mbedtls_sha256_update (int *,unsigned char const*,size_t) ;
 int mbedtls_sha512 (unsigned char const*,size_t,unsigned char*,int ) ;
 int mbedtls_sha512_update (int *,unsigned char const*,size_t) ;

__attribute__((used)) static int entropy_update( mbedtls_entropy_context *ctx, unsigned char source_id,
                           const unsigned char *data, size_t len )
{
    unsigned char header[2];
    unsigned char tmp[MBEDTLS_ENTROPY_BLOCK_SIZE];
    size_t use_len = len;
    const unsigned char *p = data;

    if( use_len > MBEDTLS_ENTROPY_BLOCK_SIZE )
    {



        mbedtls_sha256( data, len, tmp, 0 );

        p = tmp;
        use_len = MBEDTLS_ENTROPY_BLOCK_SIZE;
    }

    header[0] = source_id;
    header[1] = use_len & 0xFF;





    mbedtls_sha256_update( &ctx->accumulator, header, 2 );
    mbedtls_sha256_update( &ctx->accumulator, p, use_len );


    return( 0 );
}
