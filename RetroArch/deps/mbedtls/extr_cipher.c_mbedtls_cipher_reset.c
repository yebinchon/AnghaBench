
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ unprocessed_len; int * cipher_info; } ;
typedef TYPE_1__ mbedtls_cipher_context_t ;


 int MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA ;

int mbedtls_cipher_reset( mbedtls_cipher_context_t *ctx )
{
    if( ((void*)0) == ctx || ((void*)0) == ctx->cipher_info )
        return( MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA );

    ctx->unprocessed_len = 0;

    return( 0 );
}
