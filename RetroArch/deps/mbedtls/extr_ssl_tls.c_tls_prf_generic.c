
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int mbedtls_md_type_t ;
typedef int mbedtls_md_info_t ;
typedef int mbedtls_md_context_t ;
typedef int h_i ;


 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ;
 int MBEDTLS_MD_MAX_SIZE ;
 int mbedtls_md_free (int *) ;
 size_t mbedtls_md_get_size (int const*) ;
 int mbedtls_md_hmac_finish (int *,unsigned char*) ;
 int mbedtls_md_hmac_reset (int *) ;
 int mbedtls_md_hmac_starts (int *,unsigned char const*,size_t) ;
 int mbedtls_md_hmac_update (int *,unsigned char*,size_t) ;
 int * mbedtls_md_info_from_type (int ) ;
 int mbedtls_md_init (int *) ;
 int mbedtls_md_setup (int *,int const*,int) ;
 int mbedtls_zeroize (unsigned char*,int) ;
 int memcpy (unsigned char*,...) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int tls_prf_generic( mbedtls_md_type_t md_type,
                            const unsigned char *secret, size_t slen,
                            const char *label,
                            const unsigned char *random, size_t rlen,
                            unsigned char *dstbuf, size_t dlen )
{
    size_t nb;
    size_t i, j, k, md_len;
    unsigned char tmp[128];
    unsigned char h_i[MBEDTLS_MD_MAX_SIZE];
    const mbedtls_md_info_t *md_info;
    mbedtls_md_context_t md_ctx;
    int ret;

    mbedtls_md_init( &md_ctx );

    if( ( md_info = mbedtls_md_info_from_type( md_type ) ) == ((void*)0) )
        return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );

    md_len = mbedtls_md_get_size( md_info );

    if( sizeof( tmp ) < md_len + strlen( label ) + rlen )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    nb = strlen( label );
    memcpy( tmp + md_len, label, nb );
    memcpy( tmp + md_len + nb, random, rlen );
    nb += rlen;




    if ( ( ret = mbedtls_md_setup( &md_ctx, md_info, 1 ) ) != 0 )
        return( ret );

    mbedtls_md_hmac_starts( &md_ctx, secret, slen );
    mbedtls_md_hmac_update( &md_ctx, tmp + md_len, nb );
    mbedtls_md_hmac_finish( &md_ctx, tmp );

    for( i = 0; i < dlen; i += md_len )
    {
        mbedtls_md_hmac_reset ( &md_ctx );
        mbedtls_md_hmac_update( &md_ctx, tmp, md_len + nb );
        mbedtls_md_hmac_finish( &md_ctx, h_i );

        mbedtls_md_hmac_reset ( &md_ctx );
        mbedtls_md_hmac_update( &md_ctx, tmp, md_len );
        mbedtls_md_hmac_finish( &md_ctx, tmp );

        k = ( i + md_len > dlen ) ? dlen % md_len : md_len;

        for( j = 0; j < k; j++ )
            dstbuf[i + j] = h_i[j];
    }

    mbedtls_md_free( &md_ctx );

    mbedtls_zeroize( tmp, sizeof( tmp ) );
    mbedtls_zeroize( h_i, sizeof( h_i ) );

    return( 0 );
}
