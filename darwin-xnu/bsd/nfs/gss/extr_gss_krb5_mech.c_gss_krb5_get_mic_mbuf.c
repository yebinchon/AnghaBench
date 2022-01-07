
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int mbuf_t ;
typedef TYPE_4__* lucid_context_version_t ;
typedef int gss_qop_t ;
typedef TYPE_5__* gss_ctx_id_t ;
typedef int gss_buffer_t ;
struct TYPE_10__ {int proto; } ;
struct TYPE_11__ {TYPE_2__ key_data; } ;
struct TYPE_9__ {int etype; } ;
struct TYPE_13__ {TYPE_3__ gss_lucid_ctx; TYPE_1__ gss_cryptor; } ;
struct TYPE_12__ {int version; } ;


 scalar_t__ ENOTSUP ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ GSS_S_NO_CONTEXT ;
 scalar_t__ gss_krb5_3des_get_mic_mbuf (scalar_t__*,TYPE_5__*,int ,int ,size_t,size_t,int ) ;
 scalar_t__ gss_krb5_cfx_get_mic_mbuf (scalar_t__*,TYPE_5__*,int ,int ,size_t,size_t,int ) ;
 int supported_etype (int,int ) ;

uint32_t
gss_krb5_get_mic_mbuf(uint32_t *minor,
        gss_ctx_id_t ctx,
        gss_qop_t qop,
        mbuf_t mbp,
        size_t offset,
        size_t len,
        gss_buffer_t mic )
{
 uint32_t minor_stat = 0;

 if (minor == ((void*)0))
  minor = &minor_stat;
 *minor = 0;

 if (len == 0)
  len = ~(size_t)0;


 if (ctx == ((void*)0) || ((lucid_context_version_t)ctx)->version != 1)
  return (GSS_S_NO_CONTEXT);

 if (!supported_etype(ctx->gss_lucid_ctx.key_data.proto, ctx->gss_cryptor.etype)) {
  *minor = ENOTSUP;
  return (GSS_S_FAILURE);
 }

 switch(ctx->gss_lucid_ctx.key_data.proto) {
 case 0:

  return (gss_krb5_3des_get_mic_mbuf(minor, ctx, qop, mbp, offset, len, mic));
 case 1:

  return (gss_krb5_cfx_get_mic_mbuf(minor, ctx, qop, mbp, offset, len, mic));
 }

 return (GSS_S_COMPLETE);
}
