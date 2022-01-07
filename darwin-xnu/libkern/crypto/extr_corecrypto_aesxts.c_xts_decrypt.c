
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int dec; } ;
typedef TYPE_1__ symmetric_xts ;
struct ccmode_xts {int (* xts ) (int ,int ,unsigned long,int const*,int *) ;int (* set_tweak ) (int ,int ,int const*) ;int tweak_size; } ;
struct TYPE_5__ {struct ccmode_xts* ccaes_xts_decrypt; } ;


 int ccxts_tweak_decl (int ,int ) ;
 TYPE_3__* g_crypto_funcs ;
 int panic (char*) ;
 int stub1 (int ,int ,int const*) ;
 int stub2 (int ,int ,unsigned long,int const*,int *) ;
 int tweak ;

int xts_decrypt(const uint8_t *ct, unsigned long ptlen,
   uint8_t *pt,
    const uint8_t *iv,
   symmetric_xts *xts)
{
 const struct ccmode_xts *xtsdec = g_crypto_funcs->ccaes_xts_decrypt;
 ccxts_tweak_decl(xtsdec->tweak_size, tweak);

 if(ptlen%16) panic("xts decrypt not a multiple of block size\n");

 xtsdec->set_tweak(xts->dec, tweak, iv);
 xtsdec->xts(xts->dec, tweak, ptlen/16, ct, pt);

 return 0;
}
