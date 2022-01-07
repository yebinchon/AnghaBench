
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pk_info; } ;
typedef TYPE_2__ mbedtls_pk_context ;
struct TYPE_4__ {char const* name; } ;



const char *mbedtls_pk_get_name( const mbedtls_pk_context *ctx )
{
    if( ctx == ((void*)0) || ctx->pk_info == ((void*)0) )
        return( "invalid PK" );

    return( ctx->pk_info->name );
}
