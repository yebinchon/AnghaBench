
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_4__* crypto_ctx_t ;
struct TYPE_8__ {int * dec; int * enc; int ** ikey; } ;
struct TYPE_9__ {scalar_t__ keylen; int * key; int ** ckey; TYPE_3__ ks; TYPE_2__* dec_mode; TYPE_1__* enc_mode; } ;
struct TYPE_7__ {int size; } ;
struct TYPE_6__ {int size; } ;


 int FREE (int *,int ) ;
 size_t GSS_RCV ;
 size_t GSS_SND ;
 int M_TEMP ;
 int cc_clear (scalar_t__,int *) ;
 int cccbc_ctx_clear (int ,int *) ;

void
gss_crypto_ctx_free(crypto_ctx_t ctx)
{
 ctx->ks.ikey[GSS_SND] = ((void*)0);
 if (ctx->ks.ikey[GSS_RCV] && ctx->key != ctx->ks.ikey[GSS_RCV]) {
  cc_clear(ctx->keylen, ctx->ks.ikey[GSS_RCV]);
  FREE(ctx->ks.ikey[GSS_RCV], M_TEMP);
 }
 ctx->ks.ikey[GSS_RCV] = ((void*)0);
 if (ctx->ks.enc) {
  cccbc_ctx_clear(ctx->enc_mode->size, ctx->ks.enc);
  FREE(ctx->ks.enc, M_TEMP);
  ctx->ks.enc = ((void*)0);
 }
 if (ctx->ks.dec) {
  cccbc_ctx_clear(ctx->dec_mode->size, ctx->ks.dec);
  FREE(ctx->ks.dec, M_TEMP);
  ctx->ks.dec = ((void*)0);
 }
 if (ctx->ckey[GSS_SND] && ctx->ckey[GSS_SND] != ctx->key) {
  cc_clear(ctx->keylen, ctx->ckey[GSS_SND]);
  FREE(ctx->ckey[GSS_SND], M_TEMP);
 }
 ctx->ckey[GSS_SND] = ((void*)0);
 if (ctx->ckey[GSS_RCV] && ctx->ckey[GSS_RCV] != ctx->key) {
  cc_clear(ctx->keylen, ctx->ckey[GSS_RCV]);
  FREE(ctx->ckey[GSS_RCV], M_TEMP);
 }
 ctx->ckey[GSS_RCV] = ((void*)0);
 ctx->key = ((void*)0);
 ctx->keylen = 0;
}
