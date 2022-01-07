
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;
 int ascii_mbtowc (int ,int *,unsigned char const*,int) ;
 int ksc5601_mbtowc (int ,int *,unsigned char*,int) ;

__attribute__((used)) static int
euc_kr_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;

  if (c < 0x80)
    return ascii_mbtowc(conv,pwc,s,n);

  if (c >= 0xa1 && c < 0xff) {
    if (n < 2)
      return RET_TOOFEW(0);
    {
      unsigned char c2 = s[1];
      if (c2 >= 0xa1 && c2 < 0xff) {
        unsigned char buf[2];
        buf[0] = c-0x80; buf[1] = c2-0x80;
        return ksc5601_mbtowc(conv,pwc,buf,2);
      } else
        return RET_ILSEQ;
    }
  }
  return RET_ILSEQ;
}
