
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* handshake; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
typedef int mbedtls_sha512_context ;
struct TYPE_4__ {int fin_sha512; } ;


 int MBEDTLS_SSL_DEBUG_BUF (int,char*,unsigned char*,int) ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int mbedtls_sha512_clone (int *,int *) ;
 int mbedtls_sha512_finish (int *,unsigned char*) ;
 int mbedtls_sha512_free (int *) ;
 int mbedtls_sha512_init (int *) ;

void ssl_calc_verify_tls_sha384( mbedtls_ssl_context *ssl, unsigned char hash[48] )
{
    mbedtls_sha512_context sha512;

    mbedtls_sha512_init( &sha512 );

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> calc verify sha384" ) );

    mbedtls_sha512_clone( &sha512, &ssl->handshake->fin_sha512 );
    mbedtls_sha512_finish( &sha512, hash );

    MBEDTLS_SSL_DEBUG_BUF( 3, "calculated verify result", hash, 48 );
    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= calc verify" ) );

    mbedtls_sha512_free( &sha512 );

    return;
}
