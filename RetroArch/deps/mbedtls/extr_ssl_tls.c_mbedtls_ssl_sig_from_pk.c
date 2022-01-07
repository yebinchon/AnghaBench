
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_pk_context ;


 int MBEDTLS_PK_ECDSA ;
 int MBEDTLS_PK_RSA ;
 unsigned char MBEDTLS_SSL_SIG_ANON ;
 unsigned char MBEDTLS_SSL_SIG_ECDSA ;
 unsigned char MBEDTLS_SSL_SIG_RSA ;
 scalar_t__ mbedtls_pk_can_do (int *,int ) ;

unsigned char mbedtls_ssl_sig_from_pk( mbedtls_pk_context *pk )
{
    return( MBEDTLS_SSL_SIG_ANON );
}
