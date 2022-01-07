
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 int RET_TOOSMALL ;
 int abort () ;
 int gb2312_wctomb (int ,unsigned char*,int ,int) ;
 int iso646_cn_wctomb (int ,unsigned char*,int ,int) ;
 int isoir165ext_wctomb (int ,unsigned char*,int ,int) ;

__attribute__((used)) static int
isoir165_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char buf[2];
  int ret;


  ret = gb2312_wctomb(conv,buf,wc,2);
  if (ret != RET_ILUNI) {
    if (ret != 2) abort();
    if (!(buf[0] == 0x28 && buf[1] >= 0x21 && buf[1] <= 0x40)) {
      if (n >= 2) {
        r[0] = buf[0];
        r[1] = buf[1];
        return 2;
      }
      return RET_TOOSMALL;
    }
  }

  ret = iso646_cn_wctomb(conv,buf,wc,1);
  if (ret != RET_ILUNI) {
    if (ret != 1) abort();
    if (buf[0] >= 0x21 && buf[0] < 0x7f) {
      if (n >= 2) {
        r[0] = 0x2a;
        r[1] = buf[0];
        return 2;
      }
      return RET_TOOSMALL;
    }
  }

  ret = isoir165ext_wctomb(conv,r,wc,n);
  return ret;
}
