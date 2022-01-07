
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccmode_gcm {int size; } ;
struct TYPE_2__ {struct ccmode_gcm* ccaes_gcm_decrypt; } ;


 int cc_ctx_sizeof (int ,int ) ;
 int ccgcm_ctx ;
 TYPE_1__* g_crypto_funcs ;

unsigned aes_decrypt_get_ctx_size_gcm(void)
{
 const struct ccmode_gcm *gcm = g_crypto_funcs->ccaes_gcm_decrypt;
 if (!gcm) {
         return 0;
 }
 return (cc_ctx_sizeof(ccgcm_ctx, gcm->size));
}
