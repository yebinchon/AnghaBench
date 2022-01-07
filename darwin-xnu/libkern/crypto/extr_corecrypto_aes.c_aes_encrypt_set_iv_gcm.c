
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
 int ccgcm_set_iv (struct ccmode_gcm const*,int *,unsigned int,unsigned char const*) ;
 TYPE_1__* g_crypto_funcs ;

aes_rval aes_encrypt_set_iv_gcm(const unsigned char *in_iv, unsigned int len, ccgcm_ctx *ctx)
{
 const struct ccmode_gcm *gcm = g_crypto_funcs->ccaes_gcm_encrypt;
 if (!gcm) {
         return aes_error;
 }

 return ccgcm_set_iv(gcm, ctx, len, in_iv);
}
