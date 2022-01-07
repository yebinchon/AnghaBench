
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int md_info; } ;
typedef TYPE_1__ mbedtls_md_context_t ;
typedef int mask ;


 int MBEDTLS_MD_MAX_SIZE ;
 int mbedtls_md_finish (TYPE_1__*,unsigned char*) ;
 unsigned int mbedtls_md_get_size (int ) ;
 int mbedtls_md_starts (TYPE_1__*) ;
 int mbedtls_md_update (TYPE_1__*,unsigned char*,int) ;
 int mbedtls_zeroize (unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static void mgf_mask( unsigned char *dst, size_t dlen, unsigned char *src,
                      size_t slen, mbedtls_md_context_t *md_ctx )
{
    unsigned char mask[MBEDTLS_MD_MAX_SIZE];
    unsigned char counter[4];
    unsigned char *p;
    unsigned int hlen;
    size_t i, use_len;

    memset( mask, 0, MBEDTLS_MD_MAX_SIZE );
    memset( counter, 0, 4 );

    hlen = mbedtls_md_get_size( md_ctx->md_info );


    p = dst;

    while( dlen > 0 )
    {
        use_len = hlen;
        if( dlen < hlen )
            use_len = dlen;

        mbedtls_md_starts( md_ctx );
        mbedtls_md_update( md_ctx, src, slen );
        mbedtls_md_update( md_ctx, counter, 4 );
        mbedtls_md_finish( md_ctx, mask );

        for( i = 0; i < use_len; ++i )
            *p++ ^= mask[i];

        counter[3]++;

        dlen -= use_len;
    }

    mbedtls_zeroize( mask, sizeof( mask ) );
}
