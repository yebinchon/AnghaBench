
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iconv_hooks {int * data; int * wc_hook; int * uc_hook; } ;
struct iconv_fallbacks {int * data; int * wc_to_mb_fallback; int * mb_to_wc_fallback; int * uc_to_mb_fallback; int * mb_to_uc_fallback; } ;
typedef int iconv_t ;
typedef TYPE_2__* conv_t ;
struct TYPE_3__ {int loop_convert; } ;
struct TYPE_4__ {int transliterate; int discard_ilseq; struct iconv_fallbacks fallbacks; struct iconv_hooks hooks; TYPE_1__ lfuncs; int oindex; int iindex; } ;


 int EINVAL ;







 int errno ;
 int unicode_loop_convert ;
 int wchar_id_loop_convert ;

int iconvctl (iconv_t icd, int request, void* argument)
{
  conv_t cd = (conv_t) icd;
  switch (request) {
    case 128:
      *(int *)argument =
        ((cd->lfuncs.loop_convert == unicode_loop_convert
          && cd->iindex == cd->oindex)
         || cd->lfuncs.loop_convert == wchar_id_loop_convert
         ? 1 : 0);
      return 0;
    case 133:
      *(int *)argument = cd->transliterate;
      return 0;
    case 129:
      cd->transliterate = (*(const int *)argument ? 1 : 0);
      return 0;
    case 134:
      *(int *)argument = cd->discard_ilseq;
      return 0;
    case 132:
      cd->discard_ilseq = (*(const int *)argument ? 1 : 0);
      return 0;
    case 130:
      if (argument != ((void*)0)) {
        cd->hooks = *(const struct iconv_hooks *)argument;
      } else {
        cd->hooks.uc_hook = ((void*)0);
        cd->hooks.wc_hook = ((void*)0);
        cd->hooks.data = ((void*)0);
      }
      return 0;
    case 131:
      if (argument != ((void*)0)) {
        cd->fallbacks = *(const struct iconv_fallbacks *)argument;
      } else {
        cd->fallbacks.mb_to_uc_fallback = ((void*)0);
        cd->fallbacks.uc_to_mb_fallback = ((void*)0);
        cd->fallbacks.mb_to_wc_fallback = ((void*)0);
        cd->fallbacks.wc_to_mb_fallback = ((void*)0);
        cd->fallbacks.data = ((void*)0);
      }
      return 0;
    default:
      errno = EINVAL;
      return -1;
  }
}
