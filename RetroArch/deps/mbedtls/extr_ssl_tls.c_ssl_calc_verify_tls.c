
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* handshake; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
typedef int mbedtls_sha1_context ;
typedef int mbedtls_md5_context ;
struct TYPE_4__ {int fin_sha1; int fin_md5; } ;


 int MBEDTLS_SSL_DEBUG_BUF (int,char*,unsigned char*,int) ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int mbedtls_md5_clone (int *,int *) ;
 int mbedtls_md5_finish (int *,unsigned char*) ;
 int mbedtls_md5_free (int *) ;
 int mbedtls_md5_init (int *) ;
 int mbedtls_sha1_clone (int *,int *) ;
 int mbedtls_sha1_finish (int *,unsigned char*) ;
 int mbedtls_sha1_free (int *) ;
 int mbedtls_sha1_init (int *) ;

void ssl_calc_verify_tls( mbedtls_ssl_context *ssl, unsigned char hash[36] )
{
    mbedtls_md5_context md5;
    mbedtls_sha1_context sha1;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> calc verify tls" ) );

    mbedtls_md5_init( &md5 );
    mbedtls_sha1_init( &sha1 );

    mbedtls_md5_clone( &md5, &ssl->handshake->fin_md5 );
    mbedtls_sha1_clone( &sha1, &ssl->handshake->fin_sha1 );

     mbedtls_md5_finish( &md5, hash );
    mbedtls_sha1_finish( &sha1, hash + 16 );

    MBEDTLS_SSL_DEBUG_BUF( 3, "calculated verify result", hash, 36 );
    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= calc verify" ) );

    mbedtls_md5_free( &md5 );
    mbedtls_sha1_free( &sha1 );

    return;
}
