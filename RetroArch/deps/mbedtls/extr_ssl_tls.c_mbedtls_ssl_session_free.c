
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ticket; int * peer_cert; } ;
typedef TYPE_1__ mbedtls_ssl_session ;


 int mbedtls_free (int *) ;
 int mbedtls_x509_crt_free (int *) ;
 int mbedtls_zeroize (TYPE_1__*,int) ;

void mbedtls_ssl_session_free( mbedtls_ssl_session *session )
{
    if( session == ((void*)0) )
        return;
    mbedtls_zeroize( session, sizeof( mbedtls_ssl_session ) );
}
