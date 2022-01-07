
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ ticket_lifetime; size_t active; TYPE_1__* keys; } ;
typedef TYPE_2__ mbedtls_ssl_ticket_context ;
struct TYPE_5__ {scalar_t__ generation_time; } ;


 int mbedtls_time (int *) ;
 int ssl_ticket_gen_key (TYPE_2__*,int) ;

__attribute__((used)) static int ssl_ticket_update_keys( mbedtls_ssl_ticket_context *ctx )
{

    ((void) ctx);
        return( 0 );
}
