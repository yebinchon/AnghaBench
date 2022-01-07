
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int p_timer; int (* f_set_timer ) (int ,int,int) ;} ;
typedef TYPE_1__ mbedtls_ssl_context ;


 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int stub1 (int ,int,int) ;

__attribute__((used)) static void ssl_set_timer( mbedtls_ssl_context *ssl, uint32_t millisecs )
{
    if( ssl->f_set_timer == ((void*)0) )
        return;

    MBEDTLS_SSL_DEBUG_MSG( 3, ( "set_timer to %d ms", (int) millisecs ) );
    ssl->f_set_timer( ssl->p_timer, millisecs / 4, millisecs );
}
