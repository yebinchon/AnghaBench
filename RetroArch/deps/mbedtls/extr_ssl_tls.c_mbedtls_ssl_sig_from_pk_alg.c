
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_pk_type_t ;





 unsigned char MBEDTLS_SSL_SIG_ANON ;
 unsigned char MBEDTLS_SSL_SIG_ECDSA ;
 unsigned char MBEDTLS_SSL_SIG_RSA ;

unsigned char mbedtls_ssl_sig_from_pk_alg( mbedtls_pk_type_t type )
{
    switch( type ) {
        case 128:
            return( MBEDTLS_SSL_SIG_RSA );
        case 130:
        case 129:
            return( MBEDTLS_SSL_SIG_ECDSA );
        default:
            return( MBEDTLS_SSL_SIG_ANON );
    }
}
