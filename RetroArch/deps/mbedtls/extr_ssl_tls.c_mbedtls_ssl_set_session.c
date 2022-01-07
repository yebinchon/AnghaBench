
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mbedtls_ssl_session ;
struct TYPE_7__ {TYPE_2__* handshake; int * session_negotiate; TYPE_1__* conf; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_6__ {int resume; } ;
struct TYPE_5__ {scalar_t__ endpoint; } ;


 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ;
 scalar_t__ MBEDTLS_SSL_IS_CLIENT ;
 int ssl_session_copy (int *,int const*) ;

int mbedtls_ssl_set_session( mbedtls_ssl_context *ssl, const mbedtls_ssl_session *session )
{
    int ret;

    if( ssl == ((void*)0) ||
        session == ((void*)0) ||
        ssl->session_negotiate == ((void*)0) ||
        ssl->conf->endpoint != MBEDTLS_SSL_IS_CLIENT )
    {
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );
    }

    if( ( ret = ssl_session_copy( ssl->session_negotiate, session ) ) != 0 )
        return( ret );

    ssl->handshake->resume = 1;

    return( 0 );
}
