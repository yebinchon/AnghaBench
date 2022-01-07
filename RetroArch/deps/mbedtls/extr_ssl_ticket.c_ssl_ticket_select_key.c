
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ mbedtls_ssl_ticket_key ;
struct TYPE_6__ {TYPE_1__* keys; } ;
typedef TYPE_2__ mbedtls_ssl_ticket_context ;


 scalar_t__ memcmp (unsigned char const*,int ,int) ;

__attribute__((used)) static mbedtls_ssl_ticket_key *ssl_ticket_select_key(
        mbedtls_ssl_ticket_context *ctx,
        const unsigned char name[4] )
{
    unsigned char i;

    for( i = 0; i < sizeof( ctx->keys ) / sizeof( *ctx->keys ); i++ )
        if( memcmp( name, ctx->keys[i].name, 4 ) == 0 )
            return( &ctx->keys[i] );

    return( ((void*)0) );
}
