
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_md_info_t ;
typedef int mbedtls_md_context_t ;


 int MBEDTLS_ERR_MD_BAD_INPUT_DATA ;
 int mbedtls_md_free (int *) ;
 int mbedtls_md_hmac_finish (int *,unsigned char*) ;
 int mbedtls_md_hmac_starts (int *,unsigned char const*,size_t) ;
 int mbedtls_md_hmac_update (int *,unsigned char const*,size_t) ;
 int mbedtls_md_init (int *) ;
 int mbedtls_md_setup (int *,int const*,int) ;

int mbedtls_md_hmac( const mbedtls_md_info_t *md_info, const unsigned char *key, size_t keylen,
                const unsigned char *input, size_t ilen,
                unsigned char *output )
{
    mbedtls_md_context_t ctx;
    int ret;

    if( md_info == ((void*)0) )
        return( MBEDTLS_ERR_MD_BAD_INPUT_DATA );

    mbedtls_md_init( &ctx );

    if( ( ret = mbedtls_md_setup( &ctx, md_info, 1 ) ) != 0 )
        return( ret );

    mbedtls_md_hmac_starts( &ctx, key, keylen );
    mbedtls_md_hmac_update( &ctx, input, ilen );
    mbedtls_md_hmac_finish( &ctx, output );

    mbedtls_md_free( &ctx );

    return( 0 );
}
