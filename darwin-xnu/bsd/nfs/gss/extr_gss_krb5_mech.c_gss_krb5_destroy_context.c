
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lucid_context_t ;
typedef TYPE_3__* gss_ctx_id_t ;
struct TYPE_7__ {TYPE_3__* key_val; } ;
struct TYPE_8__ {TYPE_1__ key; } ;
struct TYPE_10__ {TYPE_2__ ctx_key; } ;
struct TYPE_9__ {TYPE_5__ gss_lucid_ctx; int gss_cryptor; } ;


 int FREE (TYPE_3__*,int ) ;
 int M_TEMP ;
 int cc_clear (int,TYPE_5__*) ;
 int gss_crypto_ctx_free (int *) ;

void
gss_krb5_destroy_context(gss_ctx_id_t ctx)
{
 if (ctx == ((void*)0))
  return;
 gss_crypto_ctx_free(&ctx->gss_cryptor);
 FREE(ctx->gss_lucid_ctx.ctx_key.key.key_val, M_TEMP);
 cc_clear(sizeof (lucid_context_t), &ctx->gss_lucid_ctx);
 FREE(ctx, M_TEMP);
}
