
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;

__attribute__((used)) static int
jisx0201_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  if (wc < 0x0080 && !(wc == 0x005c || wc == 0x007e)) {
    *r = wc;
    return 1;
  }
  if (wc == 0x00a5) {
    *r = 0x5c;
    return 1;
  }
  if (wc == 0x203e) {
    *r = 0x7e;
    return 1;
  }
  if (wc >= 0xff61 && wc < 0xffa0) {
    *r = wc - 0xfec0;
    return 1;
  }
  return RET_ILUNI;
}
