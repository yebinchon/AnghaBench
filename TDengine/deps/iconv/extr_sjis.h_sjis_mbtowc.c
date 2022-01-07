
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;
 int jisx0201_mbtowc (int ,int*,unsigned char const*,int) ;
 int jisx0208_mbtowc (int ,int*,unsigned char*,int) ;

__attribute__((used)) static int
sjis_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;
  if (c < 0x80 || (c >= 0xa1 && c <= 0xdf))
    return jisx0201_mbtowc(conv,pwc,s,n);
  else {
    unsigned char s1, s2;
    s1 = c;
    if ((s1 >= 0x81 && s1 <= 0x9f) || (s1 >= 0xe0 && s1 <= 0xea)) {
      if (n < 2)
        return RET_TOOFEW(0);
      s2 = s[1];
      if ((s2 >= 0x40 && s2 <= 0x7e) || (s2 >= 0x80 && s2 <= 0xfc)) {
        unsigned char t1 = (s1 < 0xe0 ? s1-0x81 : s1-0xc1);
        unsigned char t2 = (s2 < 0x80 ? s2-0x40 : s2-0x41);
        unsigned char buf[2];
        buf[0] = 2*t1 + (t2 < 0x5e ? 0 : 1) + 0x21;
        buf[1] = (t2 < 0x5e ? t2 : t2-0x5e) + 0x21;
        return jisx0208_mbtowc(conv,pwc,buf,2);
      }
    } else if (s1 >= 0xf0 && s1 <= 0xf9) {


      if (n < 2)
        return RET_TOOFEW(0);
      s2 = s[1];
      if ((s2 >= 0x40 && s2 <= 0x7e) || (s2 >= 0x80 && s2 <= 0xfc)) {
        *pwc = 0xe000 + 188*(s1 - 0xf0) + (s2 < 0x80 ? s2-0x40 : s2-0x41);
        return 2;
      }
    }
    return RET_ILSEQ;
  }
}
