
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ucs4_t ;
struct uc_to_mb_fallback_locals {unsigned char* l_outbuf; size_t l_outbytesleft; scalar_t__ l_errno; } ;
struct mb_to_uc_fallback_locals {scalar_t__ l_errno; unsigned char* l_outbuf; size_t l_outbytesleft; TYPE_4__* l_cd; } ;
typedef TYPE_4__* conv_t ;
struct TYPE_10__ {int data; int (* uc_hook ) (int,int ) ;} ;
struct TYPE_9__ {int (* xxx_wctomb ) (TYPE_4__*,unsigned char*,int,size_t) ;} ;
struct TYPE_8__ {int data; int (* uc_to_mb_fallback ) (int,int ,struct uc_to_mb_fallback_locals*,int ) ;} ;
struct TYPE_11__ {TYPE_3__ hooks; TYPE_2__ ofuncs; TYPE_1__ fallbacks; scalar_t__ discard_ilseq; scalar_t__ transliterate; } ;


 void* E2BIG ;
 scalar_t__ EILSEQ ;
 int RET_ILUNI ;
 int abort () ;
 int stub1 (TYPE_4__*,unsigned char*,int,size_t) ;
 int stub2 (int,int ,struct uc_to_mb_fallback_locals*,int ) ;
 int stub3 (TYPE_4__*,unsigned char*,int,size_t) ;
 int stub4 (int,int ) ;
 int uc_to_mb_write_replacement ;
 int unicode_transliterate (TYPE_4__*,int,unsigned char*,size_t) ;

__attribute__((used)) static void mb_to_uc_write_replacement (const unsigned int *buf, size_t buflen,
                                        void* callback_arg)
{
  struct mb_to_uc_fallback_locals * plocals =
    (struct mb_to_uc_fallback_locals *) callback_arg;

  if (plocals->l_errno == 0) {

    conv_t cd = plocals->l_cd;
    unsigned char* outptr = plocals->l_outbuf;
    size_t outleft = plocals->l_outbytesleft;
    for (; buflen > 0; buf++, buflen--) {
      ucs4_t wc = *buf;
      int outcount;
      if (outleft == 0) {
        plocals->l_errno = E2BIG;
        break;
      }
      outcount = cd->ofuncs.xxx_wctomb(cd,outptr,wc,outleft);
      if (outcount != RET_ILUNI)
        goto outcount_ok;

      if ((wc >> 7) == (0xe0000 >> 7))
        goto outcount_zero;

      if (cd->transliterate) {
        outcount = unicode_transliterate(cd,wc,outptr,outleft);
        if (outcount != RET_ILUNI)
          goto outcount_ok;
      }
      if (cd->discard_ilseq) {
        outcount = 0;
        goto outcount_ok;
      }

      else if (cd->fallbacks.uc_to_mb_fallback != ((void*)0)) {
        struct uc_to_mb_fallback_locals locals;
        locals.l_outbuf = outptr;
        locals.l_outbytesleft = outleft;
        locals.l_errno = 0;
        cd->fallbacks.uc_to_mb_fallback(wc,
                                        uc_to_mb_write_replacement,
                                        &locals,
                                        cd->fallbacks.data);
        if (locals.l_errno != 0) {
          plocals->l_errno = locals.l_errno;
          break;
        }
        outptr = locals.l_outbuf;
        outleft = locals.l_outbytesleft;
        outcount = 0;
        goto outcount_ok;
      }

      outcount = cd->ofuncs.xxx_wctomb(cd,outptr,0xFFFD,outleft);
      if (outcount != RET_ILUNI)
        goto outcount_ok;
      plocals->l_errno = EILSEQ;
      break;
    outcount_ok:
      if (outcount < 0) {
        plocals->l_errno = E2BIG;
        break;
      }

      if (cd->hooks.uc_hook)
        (*cd->hooks.uc_hook)(wc, cd->hooks.data);

      if (!(outcount <= outleft)) abort();
      outptr += outcount; outleft -= outcount;
    outcount_zero: ;
    }
    plocals->l_outbuf = outptr;
    plocals->l_outbytesleft = outleft;
  }
}
