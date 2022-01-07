
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccmode_gcm {int dummy; } ;
typedef int ccgcm_ctx ;
typedef int aes_rval ;
struct TYPE_2__ {struct ccmode_gcm* ccaes_gcm_encrypt; } ;


 int aes_error ;
 int ccgcm_finalize (struct ccmode_gcm const*,int *,unsigned int,unsigned char*) ;
 int ccgcm_reset (struct ccmode_gcm const*,int *) ;
 TYPE_1__* g_crypto_funcs ;

aes_rval aes_encrypt_finalize_gcm(unsigned char *tag, unsigned int tag_bytes, ccgcm_ctx *ctx)
{
 int rc;
 const struct ccmode_gcm *gcm = g_crypto_funcs->ccaes_gcm_encrypt;
 if (!gcm) {
         return aes_error;
 }

 rc = ccgcm_finalize(gcm, ctx, tag_bytes, tag);
 rc |= ccgcm_reset(gcm, ctx);
 return rc;
}
