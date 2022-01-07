
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {void** ikey; int * dec; int * enc; } ;
struct crypto_ctx {int etype; int mpad; int digest_size; int lock; int * ckey; TYPE_6__* enc_mode; int flags; TYPE_6__* di; void* key; TYPE_3__ ks; TYPE_6__* dec_mode; int keylen; TYPE_4__* gss_ctx; } ;
typedef TYPE_4__* lucid_context_t ;
struct TYPE_15__ {int block_size; } ;
struct TYPE_11__ {void* key_val; int key_len; } ;
struct TYPE_12__ {int etype; TYPE_1__ key; } ;
struct TYPE_14__ {int initiate; TYPE_2__ ctx_key; } ;




 int CRYPTO_CTS_ENABLE ;

 int ENOTSUP ;
 size_t GSS_RCV ;
 size_t GSS_SND ;
 int KRB5_USAGE_ACCEPTOR_SIGN ;
 int KRB5_USAGE_INITIATOR_SIGN ;
 int KRB5_USAGE_LEN ;
 int LCK_ATTR_NULL ;
 int assert (TYPE_6__*) ;
 TYPE_6__* ccaes_cbc_decrypt_mode () ;
 TYPE_6__* ccaes_cbc_encrypt_mode () ;
 TYPE_6__* ccdes3_cbc_decrypt_mode () ;
 TYPE_6__* ccdes3_cbc_encrypt_mode () ;
 void* ccsha1_di () ;
 int gss_krb5_mech_grp ;
 int krb5_3des_key_derivation (struct crypto_ctx*,int *,int,int *) ;
 int krb5_key_derivation (struct crypto_ctx*,int *,int,int *,int ) ;
 int krb5_make_usage (int ,int,int *) ;
 int lck_mtx_alloc_init (int ,int ) ;

int
gss_crypto_ctx_init(struct crypto_ctx *ctx, lucid_context_t lucid)
{
 ctx->gss_ctx = lucid;
 void *key;
 uint8_t usage_string[KRB5_USAGE_LEN];

 ctx->keylen = ctx->gss_ctx->ctx_key.key.key_len;
 key = ctx->gss_ctx->ctx_key.key.key_val;
 ctx->etype = ctx->gss_ctx->ctx_key.etype;
 ctx->key = key;

 switch(ctx->etype) {
 case 130:
 case 129:
  ctx->enc_mode = ccaes_cbc_encrypt_mode();
  assert(ctx->enc_mode);
  ctx->dec_mode = ccaes_cbc_decrypt_mode();
  assert(ctx->dec_mode);
  ctx->ks.enc = ((void*)0);
  ctx->ks.dec = ((void*)0);
  ctx->di = ccsha1_di();
  assert(ctx->di);
  ctx->flags = CRYPTO_CTS_ENABLE;
  ctx->mpad = 1;
  ctx->digest_size = 12;
  krb5_make_usage(ctx->gss_ctx->initiate ?
    KRB5_USAGE_INITIATOR_SIGN : KRB5_USAGE_ACCEPTOR_SIGN,
    0x99, usage_string);
  krb5_key_derivation(ctx, usage_string, KRB5_USAGE_LEN, &ctx->ckey[GSS_SND], ctx->keylen);
  krb5_make_usage(ctx->gss_ctx->initiate ?
    KRB5_USAGE_ACCEPTOR_SIGN : KRB5_USAGE_INITIATOR_SIGN,
    0x99, usage_string);
  krb5_key_derivation(ctx, usage_string, KRB5_USAGE_LEN, &ctx->ckey[GSS_RCV], ctx->keylen);
  break;
 case 128:
  ctx->enc_mode = ccdes3_cbc_encrypt_mode();
  assert(ctx->enc_mode);
  ctx->dec_mode = ccdes3_cbc_decrypt_mode();
  assert(ctx->dec_mode);
  ctx->ks.ikey[GSS_SND] = ctx->key;
  ctx->ks.ikey[GSS_RCV] = ctx->key;
  ctx->di = ccsha1_di();
  assert(ctx->di);
  ctx->flags = 0;
  ctx->mpad = ctx->enc_mode->block_size;
  ctx->digest_size = 20;
  krb5_make_usage(KRB5_USAGE_ACCEPTOR_SIGN, 0x99, usage_string);
  krb5_3des_key_derivation(ctx, usage_string, KRB5_USAGE_LEN, &ctx->ckey[GSS_SND]);
  krb5_3des_key_derivation(ctx, usage_string, KRB5_USAGE_LEN, &ctx->ckey[GSS_RCV]);
  break;
 default:
  return (ENOTSUP);
 }

 ctx->lock = lck_mtx_alloc_init(gss_krb5_mech_grp, LCK_ATTR_NULL);

 return (0);
}
