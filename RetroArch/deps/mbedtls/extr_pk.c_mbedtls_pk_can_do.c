
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mbedtls_pk_type_t ;
struct TYPE_5__ {TYPE_1__* pk_info; } ;
typedef TYPE_2__ mbedtls_pk_context ;
struct TYPE_4__ {int (* can_do ) (int ) ;} ;


 int stub1 (int ) ;

int mbedtls_pk_can_do( const mbedtls_pk_context *ctx, mbedtls_pk_type_t type )
{

    if( ctx == ((void*)0) || ctx->pk_info == ((void*)0) )
        return( 0 );

    return( ctx->pk_info->can_do( type ) );
}
