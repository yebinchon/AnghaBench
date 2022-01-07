
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pk_ctx; TYPE_1__* pk_info; } ;
typedef TYPE_2__ mbedtls_pk_context ;
struct TYPE_4__ {size_t (* get_bitlen ) (int ) ;} ;


 size_t stub1 (int ) ;

size_t mbedtls_pk_get_bitlen( const mbedtls_pk_context *ctx )
{
    if( ctx == ((void*)0) || ctx->pk_info == ((void*)0) )
        return( 0 );

    return( ctx->pk_info->get_bitlen( ctx->pk_ctx ) );
}
