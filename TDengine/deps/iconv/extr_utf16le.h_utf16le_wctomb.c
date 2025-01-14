
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 int RET_TOOSMALL ;

__attribute__((used)) static int
utf16le_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  if (!(wc >= 0xd800 && wc < 0xe000)) {
    if (wc < 0x10000) {
      if (n >= 2) {
        r[0] = (unsigned char) wc;
        r[1] = (unsigned char) (wc >> 8);
        return 2;
      } else
        return RET_TOOSMALL;
    }
    else if (wc < 0x110000) {
      if (n >= 4) {
        ucs4_t wc1 = 0xd800 + ((wc - 0x10000) >> 10);
        ucs4_t wc2 = 0xdc00 + ((wc - 0x10000) & 0x3ff);
        r[0] = (unsigned char) wc1;
        r[1] = (unsigned char) (wc1 >> 8);
        r[2] = (unsigned char) wc2;
        r[3] = (unsigned char) (wc2 >> 8);
        return 4;
      } else
        return RET_TOOSMALL;
    }
  }
  return RET_ILUNI;
}
