
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* handshake; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_4__ {unsigned char* psk; size_t psk_len; } ;


 int MBEDTLS_ERR_SSL_ALLOC_FAILED ;
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ;
 size_t MBEDTLS_PSK_MAX_LEN ;
 scalar_t__ mbedtls_calloc (int,size_t) ;
 int mbedtls_free (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;

int mbedtls_ssl_set_hs_psk( mbedtls_ssl_context *ssl,
                            const unsigned char *psk, size_t psk_len )
{
    if( psk == ((void*)0) || ssl->handshake == ((void*)0) )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    if( psk_len > MBEDTLS_PSK_MAX_LEN )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    if( ssl->handshake->psk != ((void*)0) )
        mbedtls_free( ssl->handshake->psk );

    if( ( ssl->handshake->psk = (unsigned char*)
             mbedtls_calloc( 1, psk_len ) ) == ((void*)0) )
        return( MBEDTLS_ERR_SSL_ALLOC_FAILED );

    ssl->handshake->psk_len = psk_len;
    memcpy( ssl->handshake->psk, psk, ssl->handshake->psk_len );

    return( 0 );
}
