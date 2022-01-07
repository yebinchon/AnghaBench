
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mbedtls_ssl_set_timer_t ;
typedef int mbedtls_ssl_get_timer_t ;
struct TYPE_4__ {int * f_get_timer; int * f_set_timer; void* p_timer; } ;
typedef TYPE_1__ mbedtls_ssl_context ;


 int ssl_set_timer (TYPE_1__*,int ) ;

void mbedtls_ssl_set_timer_cb( mbedtls_ssl_context *ssl,
                               void *p_timer,
                               mbedtls_ssl_set_timer_t *f_set_timer,
                               mbedtls_ssl_get_timer_t *f_get_timer )
{
    ssl->p_timer = p_timer;
    ssl->f_set_timer = f_set_timer;
    ssl->f_get_timer = f_get_timer;


    ssl_set_timer( ssl, 0 );
}
