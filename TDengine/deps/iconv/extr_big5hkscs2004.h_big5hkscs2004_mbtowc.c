
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef unsigned char ucs4_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_8__ {unsigned char istate; } ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;
 int ascii_mbtowc (TYPE_1__*,unsigned char*,unsigned char const*,int) ;
 int big5_mbtowc (TYPE_1__*,unsigned char*,unsigned char const*,int) ;
 int hkscs1999_mbtowc (TYPE_1__*,unsigned char*,unsigned char const*,int) ;
 int hkscs2001_mbtowc (TYPE_1__*,unsigned char*,unsigned char const*,int) ;
 int hkscs2004_mbtowc (TYPE_1__*,unsigned char*,unsigned char const*,int) ;

__attribute__((used)) static int
big5hkscs2004_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  ucs4_t last_wc = conv->istate;
  if (last_wc) {

    conv->istate = 0;
    *pwc = last_wc;
    return 0;
  } else {
    unsigned char c = *s;

    if (c < 0x80)
      return ascii_mbtowc(conv,pwc,s,n);

    if (c >= 0xa1 && c < 0xff) {
      if (n < 2)
        return RET_TOOFEW(0);
      {
        unsigned char c2 = s[1];
        if ((c2 >= 0x40 && c2 < 0x7f) || (c2 >= 0xa1 && c2 < 0xff)) {
          if (!((c == 0xc6 && c2 >= 0xa1) || c == 0xc7)) {
            int ret = big5_mbtowc(conv,pwc,s,2);
            if (ret != RET_ILSEQ)
              return ret;
          }
        }
      }
    }
    {
      int ret = hkscs1999_mbtowc(conv,pwc,s,n);
      if (ret != RET_ILSEQ)
        return ret;
    }
    {
      int ret = hkscs2001_mbtowc(conv,pwc,s,n);
      if (ret != RET_ILSEQ)
        return ret;
    }
    {
      int ret = hkscs2004_mbtowc(conv,pwc,s,n);
      if (ret != RET_ILSEQ)
        return ret;
    }
    if (c == 0x88) {
      if (n < 2)
        return RET_TOOFEW(0);
      {
        unsigned char c2 = s[1];
        if (c2 == 0x62 || c2 == 0x64 || c2 == 0xa3 || c2 == 0xa5) {

          ucs4_t wc1 = ((c2 >> 3) << 2) + 0x009a;
          ucs4_t wc2 = ((c2 & 6) << 2) + 0x02fc;


          *pwc = wc1;
          conv->istate = wc2;
          return 2;
        }
      }
    }
    return RET_ILSEQ;
  }
}
