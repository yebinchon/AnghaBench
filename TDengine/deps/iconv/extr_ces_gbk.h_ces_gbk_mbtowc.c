
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;
 int ascii_mbtowc (int ,int *,unsigned char const*,int) ;
 int gbk_mbtowc (int ,int *,unsigned char const*,int) ;

__attribute__((used)) static int
ces_gbk_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c = *s;


  if (c < 0x80)
    return ascii_mbtowc(conv,pwc,s,n);

  if (c >= 0x81 && c < 0xff) {
    if (n < 2)
      return RET_TOOFEW(0);
    return gbk_mbtowc(conv,pwc,s,2);
  }
  return RET_ILSEQ;
}
