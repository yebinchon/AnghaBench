
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int mbuf_t ;
typedef TYPE_1__* lucid_context_t ;
typedef int gss_qop_t ;
typedef TYPE_2__* gss_ctx_id_t ;
typedef int gss_cfx_mic_token_desc ;
typedef TYPE_3__* gss_cfx_mic_token ;
typedef TYPE_4__* gss_buffer_t ;
struct TYPE_15__ {int length; TYPE_3__* value; } ;
typedef TYPE_5__ gss_buffer_desc ;
typedef int * crypto_ctx_t ;
struct TYPE_14__ {TYPE_3__* value; } ;
struct TYPE_13__ {int SND_SEQ; } ;
struct TYPE_11__ {int recv_seq; } ;
struct TYPE_12__ {int gss_cryptor; TYPE_1__ gss_lucid_ctx; } ;


 int GSS_C_QOP_DEFAULT ;
 int GSS_S_BAD_SIG ;
 int GSS_S_COMPLETE ;
 int GSS_S_FAILURE ;
 int gss_krb5_cfx_verify_mic_token (TYPE_2__*,TYPE_3__*) ;
 int krb5_mic_mbuf (int *,int *,int ,size_t,size_t,TYPE_5__*,int *,int*,int ,int ) ;
 int memcpy (int *,int ,int) ;
 int ntohll (int ) ;

uint32_t
gss_krb5_cfx_verify_mic_mbuf(uint32_t *minor,
        gss_ctx_id_t ctx,
        mbuf_t mbp,
        size_t offset,
        size_t len,
        gss_buffer_t mic,
        gss_qop_t *qop )
{
 gss_cfx_mic_token token = mic->value;
 lucid_context_t lctx = &ctx->gss_lucid_ctx;
 crypto_ctx_t cctx = &ctx->gss_cryptor;
 uint8_t *digest = (uint8_t *)mic->value + sizeof (gss_cfx_mic_token_desc);
 int verified;
 uint64_t seq;
 uint32_t rv;
 gss_buffer_desc header;

 if (qop)
  *qop = GSS_C_QOP_DEFAULT;

 if (minor == ((void*)0))
  minor = &rv;

 *minor = gss_krb5_cfx_verify_mic_token(ctx, token);
 if (*minor)
  return (GSS_S_FAILURE);

 header.length = sizeof(gss_cfx_mic_token_desc);
 header.value = mic->value;

 *minor = krb5_mic_mbuf(cctx, ((void*)0), mbp, offset, len, &header, digest, &verified, 0, 0);


 memcpy(&seq, token->SND_SEQ, sizeof (uint64_t));
 seq = ntohll(seq);
 lctx->recv_seq = seq;

 return (verified ? GSS_S_COMPLETE : GSS_S_BAD_SIG);
}
