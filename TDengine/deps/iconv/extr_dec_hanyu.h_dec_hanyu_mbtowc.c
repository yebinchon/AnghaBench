
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;
 int abort () ;
 int ascii_mbtowc (int ,int *,unsigned char const*,int) ;
 int cns11643_1_mbtowc (int ,int *,unsigned char*,int) ;
 int cns11643_2_mbtowc (int ,int *,unsigned char*,int) ;
 int cns11643_3_mbtowc (int ,int *,unsigned char*,int) ;

__attribute__((used)) static int
dec_hanyu_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;

  if (c < 0x80)
    return ascii_mbtowc(conv,pwc,s,n);



  if (c >= 0xa1 && c < 0xff) {
    if (n < 2)
      return RET_TOOFEW(0);
    {
      unsigned char c2 = s[1];
      if (c == 0xc2 && c2 == 0xcb) {
        if (n < 4)
          return RET_TOOFEW(0);
        if (s[2] >= 0xa1 && s[2] < 0xff && s[3] >= 0xa1 && s[3] < 0xff) {
          unsigned char buf[2];
          int ret;
          buf[0] = s[2]-0x80; buf[1] = s[3]-0x80;
          ret = cns11643_3_mbtowc(conv,pwc,buf,2);
          if (ret != RET_ILSEQ) {
            if (ret != 2) abort();
            return 4;
          }
        }
      } else if (c2 >= 0xa1 && c2 < 0xff) {
        if (c != 0xc2 || c2 < 0xc2) {
          unsigned char buf[2];
          buf[0] = c-0x80; buf[1] = c2-0x80;
          return cns11643_1_mbtowc(conv,pwc,buf,2);
        }
      } else if (c2 >= 0x21 && c2 < 0x7f) {
        unsigned char buf[2];
        buf[0] = c-0x80; buf[1] = c2;
        return cns11643_2_mbtowc(conv,pwc,buf,2);
      }
    }
  }
  return RET_ILSEQ;
}
