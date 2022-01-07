
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ccmode_ecb {int (* ecb ) (int *,int,int *,int *) ;} ;
struct TYPE_4__ {int * dec; int * enc; } ;
typedef TYPE_1__ des_ecb_key_schedule ;
typedef int des_cblock ;
typedef int ccecb_ctx ;
struct TYPE_5__ {struct ccmode_ecb* ccdes_ecb_decrypt; struct ccmode_ecb* ccdes_ecb_encrypt; } ;


 TYPE_2__* g_crypto_funcs ;
 int stub1 (int *,int,int *,int *) ;

void des_ecb_encrypt(des_cblock *in, des_cblock *out, des_ecb_key_schedule *ks, int enc)
{
 const struct ccmode_ecb *ecb = enc ? g_crypto_funcs->ccdes_ecb_encrypt : g_crypto_funcs->ccdes_ecb_decrypt;
 ccecb_ctx *ctx = enc ? ks->enc : ks->dec;

 ecb->ecb(ctx, 1, in, out);
}
