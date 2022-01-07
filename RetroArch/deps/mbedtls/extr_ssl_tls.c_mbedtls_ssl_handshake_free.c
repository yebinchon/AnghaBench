
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void mbedtls_ssl_key_cert ;
typedef void mbedtls_ssl_handshake_params ;


 int mbedtls_dhm_free (int *) ;
 int mbedtls_ecdh_free (int *) ;
 int mbedtls_ecjpake_free (int *) ;
 int mbedtls_free (void*) ;
 int mbedtls_md5_free (int *) ;
 int mbedtls_sha1_free (int *) ;
 int mbedtls_sha256_free (int *) ;
 int mbedtls_sha512_free (int *) ;
 int mbedtls_zeroize (void*,int) ;
 int ssl_flight_free (int ) ;

void mbedtls_ssl_handshake_free( mbedtls_ssl_handshake_params *handshake )
{
    if( handshake == ((void*)0) )
        return;
    mbedtls_zeroize( handshake, sizeof( mbedtls_ssl_handshake_params ) );
}
