
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccmode_gcm {int dummy; } ;
typedef int ccgcm_ctx ;
typedef int aes_rval ;
struct TYPE_2__ {int (* ccgcm_inc_iv_fn ) (struct ccmode_gcm const*,int *,unsigned char*) ;struct ccmode_gcm* ccaes_gcm_decrypt; } ;


 int aes_error ;
 TYPE_1__* g_crypto_funcs ;
 int stub1 (struct ccmode_gcm const*,int *,unsigned char*) ;

aes_rval aes_decrypt_inc_iv_gcm(unsigned char *out_iv, ccgcm_ctx *ctx)
{
        const struct ccmode_gcm *gcm = g_crypto_funcs->ccaes_gcm_decrypt;
        if (!gcm) {
                return aes_error;
        }

        return g_crypto_funcs->ccgcm_inc_iv_fn(gcm, ctx, out_iv);
}
