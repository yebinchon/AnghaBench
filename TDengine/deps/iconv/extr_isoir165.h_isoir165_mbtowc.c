
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;
 int abort () ;
 int gb2312_mbtowc (int ,int *,unsigned char const*,int) ;
 int iso646_cn_mbtowc (int ,int *,unsigned char const*,int) ;
 int isoir165ext_mbtowc (int ,int *,unsigned char const*,int) ;

__attribute__((used)) static int
isoir165_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  int ret;


  if (s[0] == 0x28) {
    if (n >= 2) {
      unsigned char c2 = s[1];
      if (c2 >= 0x21 && c2 <= 0x40) {
        unsigned char buf[2];
        buf[0] = 0x2b;
        buf[1] = c2;
        ret = isoir165ext_mbtowc(conv,pwc,buf,2);
        if (ret != RET_ILSEQ)
          return ret;
      }
    }
  }

  ret = gb2312_mbtowc(conv,pwc,s,n);
  if (ret != RET_ILSEQ)
    return ret;

  if (s[0] == 0x2a) {
    if (n >= 2) {
      unsigned char c2 = s[1];
      if (c2 >= 0x21 && c2 < 0x7f) {
        int ret = iso646_cn_mbtowc(conv,pwc,s+1,1);
        if (ret != 1) abort();
        return 2;
      }
      return RET_ILSEQ;
    }
    return RET_TOOFEW(0);
  }

  ret = isoir165ext_mbtowc(conv,pwc,s,n);
  return ret;
}
