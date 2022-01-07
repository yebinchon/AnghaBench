
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int * mbuf_t ;
typedef TYPE_4__* lucid_context_version_t ;
typedef int gss_qop_t ;
typedef TYPE_5__* gss_ctx_id_t ;
struct TYPE_10__ {int proto; } ;
struct TYPE_11__ {TYPE_2__ key_data; } ;
struct TYPE_9__ {int etype; } ;
struct TYPE_13__ {TYPE_3__ gss_lucid_ctx; TYPE_1__ gss_cryptor; } ;
struct TYPE_12__ {int version; } ;


 int ENOTSUP ;
 int GSS_C_QOP_DEFAULT ;
 int GSS_S_FAILURE ;
 int GSS_S_NO_CONTEXT ;
 int gss_join_mbuf (int *,int *,int *) ;
 int gss_krb5_3des_unwrap_mbuf (int *,TYPE_5__*,int **,size_t,int*,int *) ;
 int gss_krb5_cfx_unwrap_mbuf (int *,TYPE_5__*,int **,size_t,int*,int *) ;
 int gss_normalize_mbuf (int *,size_t,size_t*,int **,int **,int ) ;
 int supported_etype (int,int ) ;

uint32_t
gss_krb5_unwrap_mbuf(uint32_t * minor,
       gss_ctx_id_t ctx,
       mbuf_t *mbp,
       size_t offset,
       size_t len,
       int *conf_flag,
       gss_qop_t *qop )
{
 uint32_t major, minor_stat = 0;
 gss_qop_t qop_val = GSS_C_QOP_DEFAULT;
 int conf_val = 0;
 mbuf_t smb, tmb;

 if (minor == ((void*)0))
  minor = &minor_stat;
 if (qop == ((void*)0))
  qop = &qop_val;
 if (conf_flag == ((void*)0))
  conf_flag = &conf_val;


 if (ctx == ((void*)0) || ((lucid_context_version_t)ctx)->version != 1)
  return (GSS_S_NO_CONTEXT);

 if (!supported_etype(ctx->gss_lucid_ctx.key_data.proto, ctx->gss_cryptor.etype)) {
  *minor = ENOTSUP;
  return (GSS_S_FAILURE);
 }

 gss_normalize_mbuf(*mbp, offset, &len, &smb, &tmb, 0);

 switch(ctx->gss_lucid_ctx.key_data.proto) {
 case 0:

  major = gss_krb5_3des_unwrap_mbuf(minor, ctx, &smb, len, conf_flag, qop);
  break;
 case 1:

  major = gss_krb5_cfx_unwrap_mbuf(minor, ctx, &smb, len, conf_flag, qop);
  break;
 }

 if (offset)
  gss_join_mbuf(*mbp, smb, tmb);
 else {
  *mbp = smb;
  gss_join_mbuf(smb, tmb, ((void*)0));
 }

 return (major);
}
