
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;
 int ces_gbk_mbtowc (int ,int*,unsigned char const*,int) ;

__attribute__((used)) static int
cp936_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{

  {
    int ret = ces_gbk_mbtowc(conv,pwc,s,n);
    if (ret != RET_ILSEQ)
      return ret;
  }

  {
    unsigned char c = *s;
    if (c == 0x80) {
      *pwc = 0x20ac;
      return 1;
    }

    if (c >= 0xa1 && c <= 0xa2) {
      if (n < 2)
        return RET_TOOFEW(0);
      {
        unsigned char c2 = s[1];
        if ((c2 >= 0x40 && c2 < 0x7f) || (c2 >= 0x80 && c2 < 0xa1)) {
          *pwc = 0xe4c6 + 96 * (c - 0xa1) + (c2 - (c2 >= 0x80 ? 0x41 : 0x40));
          return 2;
        }
      }
    } else if ((c >= 0xaa && c < 0xb0) || (c >= 0xf8 && c < 0xff)) {
      if (n < 2)
        return RET_TOOFEW(0);
      {
        unsigned char c2 = s[1];
        if (c2 >= 0xa1 && c2 < 0xff) {
          *pwc = 0xe000 + 94 * (c - (c >= 0xf8 ? 0xf2 : 0xaa)) + (c2 - 0xa1);
          return 2;
        }
      }
    }
  }
  return RET_ILSEQ;
}
