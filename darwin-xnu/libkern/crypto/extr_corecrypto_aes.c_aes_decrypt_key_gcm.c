
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccmode_gcm {int dummy; } ;
typedef int ccgcm_ctx ;
typedef int aes_rval ;
struct TYPE_2__ {struct ccmode_gcm* ccaes_gcm_decrypt; } ;


 int aes_error ;
 int ccgcm_init (struct ccmode_gcm const*,int *,int,unsigned char const*) ;
 TYPE_1__* g_crypto_funcs ;

aes_rval aes_decrypt_key_gcm(const unsigned char *key, int key_len, ccgcm_ctx *ctx)
{
 const struct ccmode_gcm *gcm = g_crypto_funcs->ccaes_gcm_decrypt;
 if (!gcm) {
         return aes_error;
 }

 return ccgcm_init(gcm, ctx, key_len, key);
}
