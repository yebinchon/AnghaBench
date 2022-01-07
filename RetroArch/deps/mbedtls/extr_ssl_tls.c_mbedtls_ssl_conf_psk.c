
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* psk; unsigned char* psk_identity; size_t psk_len; size_t psk_identity_len; } ;
typedef TYPE_1__ mbedtls_ssl_config ;


 int MBEDTLS_ERR_SSL_ALLOC_FAILED ;
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ;
 size_t MBEDTLS_PSK_MAX_LEN ;
 size_t MBEDTLS_SSL_MAX_CONTENT_LEN ;
 scalar_t__ mbedtls_calloc (int,size_t) ;
 int mbedtls_free (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;

int mbedtls_ssl_conf_psk( mbedtls_ssl_config *conf,
                const unsigned char *psk, size_t psk_len,
                const unsigned char *psk_identity, size_t psk_identity_len )
{
    if( psk == ((void*)0) || psk_identity == ((void*)0) )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    if( psk_len > MBEDTLS_PSK_MAX_LEN )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );


    if( ( psk_identity_len >> 16 ) != 0 ||
        psk_identity_len > MBEDTLS_SSL_MAX_CONTENT_LEN )
    {
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );
    }

    if( conf->psk != ((void*)0) || conf->psk_identity != ((void*)0) )
    {
        mbedtls_free( conf->psk );
        mbedtls_free( conf->psk_identity );
        conf->psk = ((void*)0);
        conf->psk_identity = ((void*)0);
    }

    if( ( conf->psk = (unsigned char*)mbedtls_calloc( 1, psk_len ) ) == ((void*)0) ||
        ( conf->psk_identity = (unsigned char*)mbedtls_calloc( 1, psk_identity_len ) ) == ((void*)0) )
    {
        mbedtls_free( conf->psk );
        mbedtls_free( conf->psk_identity );
        conf->psk = ((void*)0);
        conf->psk_identity = ((void*)0);
        return( MBEDTLS_ERR_SSL_ALLOC_FAILED );
    }

    conf->psk_len = psk_len;
    conf->psk_identity_len = psk_identity_len;

    memcpy( conf->psk, psk, conf->psk_len );
    memcpy( conf->psk_identity, psk_identity, conf->psk_identity_len );

    return( 0 );
}
