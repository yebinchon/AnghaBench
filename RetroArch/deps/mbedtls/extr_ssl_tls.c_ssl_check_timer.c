
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* f_get_timer ) (int ) ;int p_timer; } ;
typedef TYPE_1__ mbedtls_ssl_context ;


 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int stub1 (int ) ;

__attribute__((used)) static int ssl_check_timer( mbedtls_ssl_context *ssl )
{
    if( ssl->f_get_timer == ((void*)0) )
        return( 0 );

    if( ssl->f_get_timer( ssl->p_timer ) == 2 )
    {
        MBEDTLS_SSL_DEBUG_MSG( 3, ( "timer expired" ) );
        return( -1 );
    }

    return( 0 );
}
