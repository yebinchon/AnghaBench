
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_23__ {scalar_t__* TOK_ID; scalar_t__ Filler; int Flags; int* EC; int* RRC; int SND_SEQ; } ;
typedef TYPE_4__ uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int seq ;
typedef int mbuf_t ;
typedef TYPE_5__* lucid_context_t ;
typedef scalar_t__ gss_qop_t ;
typedef TYPE_6__* gss_ctx_id_t ;
typedef TYPE_4__ gss_cfx_wrap_token_desc ;
struct TYPE_26__ {int length; TYPE_4__* value; } ;
typedef TYPE_8__ gss_buffer_desc ;
typedef TYPE_9__* crypto_ctx_t ;
struct TYPE_27__ {int digest_size; } ;
struct TYPE_20__ {scalar_t__ acceptor_subkey; } ;
struct TYPE_21__ {TYPE_1__ data_4121; } ;
struct TYPE_22__ {TYPE_2__ lucid_protocol_u; } ;
struct TYPE_24__ {int initiate; int recv_seq; TYPE_3__ key_data; } ;
struct TYPE_25__ {TYPE_9__ gss_cryptor; TYPE_5__ gss_lucid_ctx; } ;
struct TYPE_19__ {scalar_t__* TOK_ID; scalar_t__ Filler; } ;


 int CFXAcceptorSubkey ;
 int CFXSealed ;
 int CFXSentByAcceptor ;
 int EBADRPC ;
 scalar_t__ GSS_C_QOP_DEFAULT ;
 scalar_t__ GSS_C_QOP_REVERSE ;
 int GSS_S_COMPLETE ;
 int GSS_S_FAILURE ;
 int gss_krb5_cfx_unwrap_rrc_mbuf (int ,int) ;
 int gss_strip_mbuf (int ,int) ;
 int krb5_cfx_crypt_mbuf (TYPE_9__*,int *,size_t*,int ,int) ;
 int krb5_mic_mbuf (TYPE_9__*,int *,int ,int ,size_t,TYPE_8__*,TYPE_4__*,int*,int,int) ;
 int mbuf_copydata (int ,size_t,int,TYPE_4__*) ;
 scalar_t__ memcmp (TYPE_4__*,TYPE_4__*,int) ;
 int memcpy (int *,int ,int) ;
 int ntohll (int ) ;
 int printf (char*,...) ;
 TYPE_10__ wrap_cfx_token ;

uint32_t
gss_krb5_cfx_unwrap_mbuf(uint32_t * minor,
    gss_ctx_id_t ctx,
    mbuf_t *mbp,
    size_t len,
    int *conf_flag,
    gss_qop_t *qop )
{
 gss_cfx_wrap_token_desc token;
 lucid_context_t lctx = &ctx->gss_lucid_ctx;
 crypto_ctx_t cctx = &ctx->gss_cryptor;
 int error, conf;
 uint16_t ec = 0 , rrc = 0;
 uint64_t seq;
 int reverse = (*qop == GSS_C_QOP_REVERSE);
 int initiate = lctx->initiate ? (reverse ? 0 : 1) : (reverse ? 1 : 0);

 error = mbuf_copydata(*mbp, 0, sizeof (gss_cfx_wrap_token_desc), &token);
 gss_strip_mbuf(*mbp, sizeof (gss_cfx_wrap_token_desc));
 len -= sizeof (gss_cfx_wrap_token_desc);


 if (token.TOK_ID[0] != wrap_cfx_token.TOK_ID[0] ||
     token.TOK_ID[1] != wrap_cfx_token.TOK_ID[1] ||
     token.Filler != wrap_cfx_token.Filler) {
  printf("Token id does not match\n");
  goto badrpc;
 }
 if ((initiate && !(token.Flags & CFXSentByAcceptor)) ||
     (lctx->key_data.lucid_protocol_u.data_4121.acceptor_subkey && !(token.Flags & CFXAcceptorSubkey))) {
  printf("Bad flags %x\n", token.Flags);
  goto badrpc;
 }


 memcpy(&seq, token.SND_SEQ, sizeof (seq));
 seq = ntohll(seq);
 lctx->recv_seq = seq;

 ec = (token.EC[0] << 8) | token.EC[1];
 rrc = (token.RRC[0] << 8) | token.RRC[1];
 *qop = GSS_C_QOP_DEFAULT;
 conf = ((token.Flags & CFXSealed) == CFXSealed);
 if (conf_flag)
  *conf_flag = conf;
 if (conf) {
  gss_cfx_wrap_token_desc etoken;

  if (rrc)
   gss_krb5_cfx_unwrap_rrc_mbuf(*mbp, rrc);
  error = krb5_cfx_crypt_mbuf(cctx, mbp, &len, 0, reverse);
  if (error) {
   printf("krb5_cfx_crypt_mbuf %d\n", error);
   *minor = error;
   return (GSS_S_FAILURE);
  }
  if (len >= sizeof(gss_cfx_wrap_token_desc))
   len -= sizeof(gss_cfx_wrap_token_desc);
  else
   goto badrpc;
  mbuf_copydata(*mbp, len, sizeof(gss_cfx_wrap_token_desc), &etoken);

  token.RRC[0] = token.RRC[1] = 0;
  if (memcmp(&token, &etoken, sizeof (gss_cfx_wrap_token_desc)) != 0) {
   printf("Encrypted token mismach\n");
   goto badrpc;
  }

  gss_strip_mbuf(*mbp, -(sizeof(gss_cfx_wrap_token_desc) + ec));
  len -= (sizeof(gss_cfx_wrap_token_desc) + ec);
 } else {
  uint8_t digest[cctx->digest_size];
  int verf;
  gss_buffer_desc header;

  if (ec != cctx->digest_size || len >= cctx->digest_size)
   goto badrpc;
  len -= cctx->digest_size;
  mbuf_copydata(*mbp, len, cctx->digest_size, digest);
  gss_strip_mbuf(*mbp, -cctx->digest_size);

  token.EC[0] = token.EC[1] = token.RRC[0] = token.RRC[1] = 0;
  header.value = &token;
  header.length = sizeof(gss_cfx_wrap_token_desc);
  error = krb5_mic_mbuf(cctx, ((void*)0), *mbp, 0, len, &header, digest, &verf, 1, reverse);
  if (error)
   goto badrpc;
 }
 return (GSS_S_COMPLETE);

badrpc:
 *minor = EBADRPC;
 return (GSS_S_FAILURE);
}
