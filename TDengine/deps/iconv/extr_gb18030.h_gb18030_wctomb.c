
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 int RET_TOOSMALL ;
 int ascii_wctomb (int ,unsigned char*,int,int) ;
 int* gb18030_pua2charset ;
 int gb18030ext_wctomb (int ,unsigned char*,int,int) ;
 int gb18030uni_wctomb (int ,unsigned char*,int,int) ;
 int gbk_wctomb (int ,unsigned char*,int,int) ;

__attribute__((used)) static int
gb18030_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  int ret;


  ret = ascii_wctomb(conv,r,wc,n);
  if (ret != RET_ILUNI)
    return ret;


  ret = gbk_wctomb(conv,r,wc,n);
  if (ret != RET_ILUNI)
    return ret;

  ret = gb18030ext_wctomb(conv,r,wc,n);
  if (ret != RET_ILUNI)
    return ret;


  if (wc >= 0xe000 && wc <= 0xe864) {
    if (n >= 2) {
      if (wc < 0xe766) {

        if (wc < 0xe4c6) {
          unsigned int i = wc - 0xe000;
          r[1] = (i % 94) + 0xa1; i = i / 94;
          r[0] = (i < 6 ? i + 0xaa : i + 0xf2);
          return 2;
        } else {
          unsigned int i = wc - 0xe4c6;
          r[0] = (i / 96) + 0xa1; i = i % 96;
          r[1] = i + (i >= 0x3f ? 0x41 : 0x40);
          return 2;
        }
      } else {

        unsigned int k1 = 0;
        unsigned int k2 = 32;


        while (k1 < k2) {
          unsigned int k = (k1 + k2) / 2;
          if (wc < gb18030_pua2charset[k*3+0])
            k2 = k;
          else if (wc > gb18030_pua2charset[k*3+1])
            k1 = k + 1;
          else {
            unsigned short c =
              gb18030_pua2charset[k*3+2] + (wc - gb18030_pua2charset[k*3+0]);
            r[0] = (c >> 8);
            r[1] = (c & 0xff);
            return 2;
          }
        }
      }
    } else
      return RET_TOOSMALL;
  }
  ret = gb18030uni_wctomb(conv,r,wc,n);
  if (ret != RET_ILUNI)
    return ret;


  if (n >= 4) {
    if (wc >= 0x10000 && wc < 0x110000) {
      unsigned int i = wc - 0x10000;
      r[3] = (i % 10) + 0x30; i = i / 10;
      r[2] = (i % 126) + 0x81; i = i / 126;
      r[1] = (i % 10) + 0x30; i = i / 10;
      r[0] = i + 0x90;
      return 4;
    }
    return RET_ILUNI;
  }
  return RET_TOOSMALL;
}
