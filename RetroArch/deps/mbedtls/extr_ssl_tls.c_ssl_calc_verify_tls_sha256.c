
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* handshake; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
typedef int mbedtls_sha256_context ;
struct TYPE_4__ {int fin_sha256; } ;


 int MBEDTLS_SSL_DEBUG_BUF (int,char*,unsigned char*,int) ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int mbedtls_sha256_clone (int *,int *) ;
 int mbedtls_sha256_finish (int *,unsigned char*) ;
 int mbedtls_sha256_free (int *) ;
 int mbedtls_sha256_init (int *) ;

void ssl_calc_verify_tls_sha256( mbedtls_ssl_context *ssl, unsigned char hash[32] )
{
    mbedtls_sha256_context sha256;

    mbedtls_sha256_init( &sha256 );

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> calc verify sha256" ) );

    mbedtls_sha256_clone( &sha256, &ssl->handshake->fin_sha256 );
    mbedtls_sha256_finish( &sha256, hash );

    MBEDTLS_SSL_DEBUG_BUF( 3, "calculated verify result", hash, 32 );
    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= calc verify" ) );

    mbedtls_sha256_free( &sha256 );

    return;
}
