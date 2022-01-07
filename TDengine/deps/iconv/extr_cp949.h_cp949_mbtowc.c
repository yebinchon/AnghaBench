
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;
 int ascii_mbtowc (int ,int*,unsigned char const*,int) ;
 int ksc5601_mbtowc (int ,int*,unsigned char*,int) ;
 int uhc_1_mbtowc (int ,int*,unsigned char const*,int) ;
 int uhc_2_mbtowc (int ,int*,unsigned char const*,int) ;

__attribute__((used)) static int
cp949_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;

  if (c < 0x80)
    return ascii_mbtowc(conv,pwc,s,n);

  if (c >= 0x81 && c <= 0xa0)
    return uhc_1_mbtowc(conv,pwc,s,n);
  if (c >= 0xa1 && c < 0xff) {
    if (n < 2)
      return RET_TOOFEW(0);
    {
      unsigned char c2 = s[1];
      if (c2 < 0xa1)

        return uhc_2_mbtowc(conv,pwc,s,n);
      else if (c2 < 0xff && !(c == 0xa2 && c2 == 0xe8)) {

        unsigned char buf[2];
        int ret;
        buf[0] = c-0x80; buf[1] = c2-0x80;
        ret = ksc5601_mbtowc(conv,pwc,buf,2);
        if (ret != RET_ILSEQ)
          return ret;

        if (c == 0xc9) {
          *pwc = 0xe000 + (c2 - 0xa1);
          return 2;
        }
        if (c == 0xfe) {
          *pwc = 0xe05e + (c2 - 0xa1);
          return 2;
        }
      }
    }
  }
  return RET_ILSEQ;
}
