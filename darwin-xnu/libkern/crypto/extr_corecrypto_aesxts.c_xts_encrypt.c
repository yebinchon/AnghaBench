
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int enc; } ;
typedef TYPE_1__ symmetric_xts ;
struct ccmode_xts {int (* xts ) (int ,int ,unsigned long,int const*,int *) ;int (* set_tweak ) (int ,int ,int const*) ;int tweak_size; } ;
struct TYPE_5__ {struct ccmode_xts* ccaes_xts_encrypt; } ;


 int ccxts_tweak_decl (int ,int ) ;
 TYPE_3__* g_crypto_funcs ;
 int panic (char*) ;
 int stub1 (int ,int ,int const*) ;
 int stub2 (int ,int ,unsigned long,int const*,int *) ;
 int tweak ;

int xts_encrypt(const uint8_t *pt, unsigned long ptlen,
   uint8_t *ct,
   const uint8_t *iv,
   symmetric_xts *xts)
{
 const struct ccmode_xts *xtsenc = g_crypto_funcs->ccaes_xts_encrypt;
 ccxts_tweak_decl(xtsenc->tweak_size, tweak);

 if(ptlen%16) panic("xts encrypt not a multiple of block size\n");

 xtsenc->set_tweak(xts->enc, tweak, iv);
 xtsenc->xts(xts->enc, tweak, ptlen/16, pt, ct);

 return 0;
}
