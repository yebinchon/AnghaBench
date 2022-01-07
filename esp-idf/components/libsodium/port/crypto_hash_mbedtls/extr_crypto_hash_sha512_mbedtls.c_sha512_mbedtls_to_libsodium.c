
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buffer; int state; int total; } ;
typedef TYPE_1__ mbedtls_sha512_context ;
struct TYPE_6__ {int buf; int state; int count; } ;
typedef TYPE_2__ crypto_hash_sha512_state ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static void sha512_mbedtls_to_libsodium(crypto_hash_sha512_state *ls_state, const mbedtls_sha512_context *mb_ctx)
{
    memcpy(ls_state->count, mb_ctx->total, sizeof(ls_state->count));
    memcpy(ls_state->state, mb_ctx->state, sizeof(ls_state->state));
    memcpy(ls_state->buf, mb_ctx->buffer, sizeof(ls_state->buf));
}
