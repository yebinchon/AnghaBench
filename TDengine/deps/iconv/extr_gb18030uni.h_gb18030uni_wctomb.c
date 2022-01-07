
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 int RET_TOOSMALL ;
 unsigned int* gb18030uni_ranges ;
 unsigned int* gb18030uni_uni2charset_ranges ;

__attribute__((used)) static int
gb18030uni_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  if (n >= 4) {
    unsigned int i = wc;
    if (i >= 0x0080 && i <= 0xffff) {
      unsigned int k1 = 0;
      unsigned int k2 = 205;
      while (k1 < k2) {
        unsigned int k = (k1 + k2) / 2;
        if (i <= gb18030uni_uni2charset_ranges[2*k+1])
          k2 = k;
        else if (i >= gb18030uni_uni2charset_ranges[2*k+2])
          k1 = k + 1;
        else
          return RET_ILUNI;
      }
      {
        unsigned int diff = gb18030uni_ranges[k1];
        i -= diff;
        r[3] = (i % 10) + 0x30; i = i / 10;
        r[2] = (i % 126) + 0x81; i = i / 126;
        r[1] = (i % 10) + 0x30; i = i / 10;
        r[0] = i + 0x81;
        return 4;
      }
    }
    return RET_ILUNI;
  }
  return RET_TOOSMALL;
}
