
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILUNI ;
 int RET_TOOSMALL ;
 int abort () ;
 int ascii_wctomb (int ,unsigned char*,int ,int) ;
 int cns11643_wctomb (int ,unsigned char*,int ,int) ;

__attribute__((used)) static int
euc_tw_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  unsigned char buf[3];
  int ret;


  ret = ascii_wctomb(conv,r,wc,n);
  if (ret != RET_ILUNI)
    return ret;

  ret = cns11643_wctomb(conv,buf,wc,3);
  if (ret != RET_ILUNI) {
    if (ret != 3) abort();


    if (buf[0] == 1) {
      if (n < 2)
        return RET_TOOSMALL;
      r[0] = buf[1]+0x80;
      r[1] = buf[2]+0x80;
      return 2;
    }


    if (n < 4)
      return RET_TOOSMALL;
    r[0] = 0x8e;
    r[1] = buf[0]+0xa0;
    r[2] = buf[1]+0x80;
    r[3] = buf[2]+0x80;
    return 4;
  }

  return RET_ILUNI;
}
