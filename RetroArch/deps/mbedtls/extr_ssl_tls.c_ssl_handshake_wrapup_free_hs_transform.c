
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * transform_negotiate; int * transform; int * handshake; } ;
typedef TYPE_1__ mbedtls_ssl_context ;


 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int mbedtls_free (int *) ;
 int mbedtls_ssl_handshake_free (int *) ;
 int mbedtls_ssl_transform_free (int *) ;

__attribute__((used)) static void ssl_handshake_wrapup_free_hs_transform( mbedtls_ssl_context *ssl )
{
    MBEDTLS_SSL_DEBUG_MSG( 3, ( "=> handshake wrapup: final free" ) );




    mbedtls_ssl_handshake_free( ssl->handshake );
    mbedtls_free( ssl->handshake );
    ssl->handshake = ((void*)0);




    if( ssl->transform )
    {
        mbedtls_ssl_transform_free( ssl->transform );
        mbedtls_free( ssl->transform );
    }
    ssl->transform = ssl->transform_negotiate;
    ssl->transform_negotiate = ((void*)0);

    MBEDTLS_SSL_DEBUG_MSG( 3, ( "<= handshake wrapup: final free" ) );
}
