
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * (* ctx_alloc_func ) () ;} ;
typedef TYPE_1__ mbedtls_pk_info_t ;
struct TYPE_6__ {TYPE_1__ const* pk_info; int * pk_ctx; } ;
typedef TYPE_2__ mbedtls_pk_context ;


 int MBEDTLS_ERR_PK_ALLOC_FAILED ;
 int MBEDTLS_ERR_PK_BAD_INPUT_DATA ;
 int * stub1 () ;

int mbedtls_pk_setup( mbedtls_pk_context *ctx, const mbedtls_pk_info_t *info )
{
    if( ctx == ((void*)0) || info == ((void*)0) || ctx->pk_info != ((void*)0) )
        return( MBEDTLS_ERR_PK_BAD_INPUT_DATA );

    if( ( ctx->pk_ctx = info->ctx_alloc_func() ) == ((void*)0) )
        return( MBEDTLS_ERR_PK_ALLOC_FAILED );

    ctx->pk_info = info;

    return( 0 );
}
