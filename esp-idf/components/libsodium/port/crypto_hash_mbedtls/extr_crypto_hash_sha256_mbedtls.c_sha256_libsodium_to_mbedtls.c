
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ is224; int buffer; int state; int total; } ;
typedef TYPE_1__ mbedtls_sha256_context ;
struct TYPE_6__ {int * buf; int * state; int count; } ;
typedef TYPE_2__ crypto_hash_sha256_state ;


 int memcpy (int ,int *,int) ;

__attribute__((used)) static void sha256_libsodium_to_mbedtls(mbedtls_sha256_context *mb_ctx, crypto_hash_sha256_state *ls_state)
{
    memcpy(mb_ctx->total, &ls_state->count, sizeof(mb_ctx->total));
    memcpy(mb_ctx->state, ls_state->state, sizeof(mb_ctx->state));
    memcpy(mb_ctx->buffer, ls_state->buf, sizeof(mb_ctx->buffer));
    mb_ctx->is224 = 0;
}
