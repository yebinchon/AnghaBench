
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pk_ctx; int * pk_info; } ;
typedef TYPE_1__ mbedtls_pk_context ;



void mbedtls_pk_init( mbedtls_pk_context *ctx )
{
    if( ctx == ((void*)0) )
        return;

    ctx->pk_info = ((void*)0);
    ctx->pk_ctx = ((void*)0);
}
