
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ucs4_t ;
struct uc_to_mb_fallback_locals {unsigned char* l_outbuf; size_t l_outbytesleft; scalar_t__ l_errno; } ;
struct mb_to_uc_fallback_locals {unsigned char* l_outbuf; size_t l_outbytesleft; scalar_t__ l_errno; TYPE_5__* l_cd; } ;
typedef void* state_t ;
typedef int iconv_t ;
typedef TYPE_5__* conv_t ;
struct TYPE_13__ {int data; int (* uc_hook ) (int,int ) ;} ;
struct TYPE_12__ {int (* xxx_wctomb ) (TYPE_5__*,unsigned char*,int,size_t) ;} ;
struct TYPE_11__ {int data; int (* uc_to_mb_fallback ) (int,int ,struct uc_to_mb_fallback_locals*,int ) ;int (* mb_to_uc_fallback ) (char const*,unsigned int,int ,struct mb_to_uc_fallback_locals*,int ) ;} ;
struct TYPE_10__ {int (* xxx_mbtowc ) (TYPE_5__*,int*,unsigned char const*,size_t) ;} ;
struct TYPE_14__ {int iindex; TYPE_4__ hooks; void* istate; TYPE_3__ ofuncs; TYPE_2__ fallbacks; scalar_t__ discard_ilseq; scalar_t__ transliterate; TYPE_1__ ifuncs; } ;


 int DECODE_SHIFT_ILSEQ (int) ;
 int DECODE_TOOFEW (int) ;
 scalar_t__ E2BIG ;
 scalar_t__ EILSEQ ;
 scalar_t__ EINVAL ;
 int RET_ILSEQ ;
 int RET_ILUNI ;
 int RET_TOOFEW (int ) ;
 int abort () ;
 scalar_t__ errno ;
 int mb_to_uc_write_replacement ;
 int stub1 (TYPE_5__*,int*,unsigned char const*,size_t) ;
 int stub2 (char const*,unsigned int,int ,struct mb_to_uc_fallback_locals*,int ) ;
 int stub3 (TYPE_5__*,unsigned char*,int,size_t) ;
 int stub4 (int,int ,struct uc_to_mb_fallback_locals*,int ) ;
 int stub5 (TYPE_5__*,unsigned char*,int,size_t) ;
 int stub6 (int,int ) ;
 int uc_to_mb_write_replacement ;
 int unicode_transliterate (TYPE_5__*,int,unsigned char*,size_t) ;

__attribute__((used)) static size_t unicode_loop_convert (iconv_t icd,
                                    const char* * inbuf, size_t *inbytesleft,
                                    char* * outbuf, size_t *outbytesleft)
{
  conv_t cd = (conv_t) icd;
  size_t result = 0;
  const unsigned char* inptr = (const unsigned char*) *inbuf;
  size_t inleft = *inbytesleft;
  unsigned char* outptr = (unsigned char*) *outbuf;
  size_t outleft = *outbytesleft;
  while (inleft > 0) {
    state_t last_istate = cd->istate;
    ucs4_t wc;
    int incount;
    int outcount;
    incount = cd->ifuncs.xxx_mbtowc(cd,&wc,inptr,inleft);
    if (incount < 0) {
      if ((unsigned int)(-1-incount) % 2 == (unsigned int)(-1-RET_ILSEQ) % 2) {

        incount = DECODE_SHIFT_ILSEQ(incount);
        if (cd->discard_ilseq) {
          switch (cd->iindex) {
            case 138: case 137: case 135:
            case 130: case 129: case 128:
            case 136: case 134:
              incount += 4; break;
            case 143: case 142: case 140:
            case 133: case 132: case 131:
            case 141: case 139:
              incount += 2; break;
            default:
              incount += 1; break;
          }
          goto outcount_zero;
        }

        else if (cd->fallbacks.mb_to_uc_fallback != ((void*)0)) {
          unsigned int incount2;
          struct mb_to_uc_fallback_locals locals;
          switch (cd->iindex) {
            case 138: case 137: case 135:
            case 130: case 129: case 128:
            case 136: case 134:
              incount2 = 4; break;
            case 143: case 142: case 140:
            case 133: case 132: case 131:
            case 141: case 139:
              incount2 = 2; break;
            default:
              incount2 = 1; break;
          }
          locals.l_cd = cd;
          locals.l_outbuf = outptr;
          locals.l_outbytesleft = outleft;
          locals.l_errno = 0;
          cd->fallbacks.mb_to_uc_fallback((const char*)inptr+incount, incount2,
                                          mb_to_uc_write_replacement,
                                          &locals,
                                          cd->fallbacks.data);
          if (locals.l_errno != 0) {
            inptr += incount; inleft -= incount;
            errno = locals.l_errno;
            result = -1;
            break;
          }
          incount += incount2;
          outptr = locals.l_outbuf;
          outleft = locals.l_outbytesleft;
          result += 1;
          goto outcount_zero;
        }

        inptr += incount; inleft -= incount;
        errno = EILSEQ;
        result = -1;
        break;
      }
      if (incount == RET_TOOFEW(0)) {

        errno = EINVAL;
        result = -1;
        break;
      }

      incount = DECODE_TOOFEW(incount);
    } else {

      if (outleft == 0) {
        cd->istate = last_istate;
        errno = E2BIG;
        result = -1;
        break;
      }
      outcount = cd->ofuncs.xxx_wctomb(cd,outptr,wc,outleft);
      if (outcount != RET_ILUNI)
        goto outcount_ok;

      if ((wc >> 7) == (0xe0000 >> 7))
        goto outcount_zero;

      result++;
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
          cd->istate = last_istate;
          errno = locals.l_errno;
          return -1;
        }
        outptr = locals.l_outbuf;
        outleft = locals.l_outbytesleft;
        outcount = 0;
        goto outcount_ok;
      }

      outcount = cd->ofuncs.xxx_wctomb(cd,outptr,0xFFFD,outleft);
      if (outcount != RET_ILUNI)
        goto outcount_ok;
      cd->istate = last_istate;
      errno = EILSEQ;
      result = -1;
      break;
    outcount_ok:
      if (outcount < 0) {
        cd->istate = last_istate;
        errno = E2BIG;
        result = -1;
        break;
      }

      if (cd->hooks.uc_hook)
        (*cd->hooks.uc_hook)(wc, cd->hooks.data);

      if (!(outcount <= outleft)) abort();
      outptr += outcount; outleft -= outcount;
    }
  outcount_zero:
    if (!(incount <= inleft)) abort();
    inptr += incount; inleft -= incount;
  }
  *inbuf = (const char*) inptr;
  *inbytesleft = inleft;
  *outbuf = (char*) outptr;
  *outbytesleft = outleft;
  return result;
}
