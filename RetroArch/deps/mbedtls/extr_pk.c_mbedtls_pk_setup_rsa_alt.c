
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int key_len_func; int sign_func; int decrypt_func; void* key; } ;
typedef TYPE_1__ mbedtls_rsa_alt_context ;
typedef int mbedtls_pk_rsa_alt_sign_func ;
typedef int mbedtls_pk_rsa_alt_key_len_func ;
typedef int mbedtls_pk_rsa_alt_decrypt_func ;
struct TYPE_7__ {int * (* ctx_alloc_func ) () ;} ;
typedef TYPE_2__ mbedtls_pk_info_t ;
struct TYPE_8__ {int * pk_ctx; TYPE_2__ const* pk_info; } ;
typedef TYPE_3__ mbedtls_pk_context ;


 int MBEDTLS_ERR_PK_ALLOC_FAILED ;
 int MBEDTLS_ERR_PK_BAD_INPUT_DATA ;
 TYPE_2__ mbedtls_rsa_alt_info ;
 int * stub1 () ;

int mbedtls_pk_setup_rsa_alt( mbedtls_pk_context *ctx, void * key,
                         mbedtls_pk_rsa_alt_decrypt_func decrypt_func,
                         mbedtls_pk_rsa_alt_sign_func sign_func,
                         mbedtls_pk_rsa_alt_key_len_func key_len_func )
{
    mbedtls_rsa_alt_context *rsa_alt;
    const mbedtls_pk_info_t *info = &mbedtls_rsa_alt_info;

    if( ctx == ((void*)0) || ctx->pk_info != ((void*)0) )
        return( MBEDTLS_ERR_PK_BAD_INPUT_DATA );

    if( ( ctx->pk_ctx = info->ctx_alloc_func() ) == ((void*)0) )
        return( MBEDTLS_ERR_PK_ALLOC_FAILED );

    ctx->pk_info = info;

    rsa_alt = (mbedtls_rsa_alt_context *) ctx->pk_ctx;

    rsa_alt->key = key;
    rsa_alt->decrypt_func = decrypt_func;
    rsa_alt->sign_func = sign_func;
    rsa_alt->key_len_func = key_len_func;

    return( 0 );
}
