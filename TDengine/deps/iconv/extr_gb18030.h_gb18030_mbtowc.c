
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;
 int ascii_mbtowc (int ,int*,unsigned char const*,int) ;
 int gb18030ext_mbtowc (int ,int*,unsigned char const*,int) ;
 int gb18030uni_mbtowc (int ,int*,unsigned char const*,int) ;
 int gbk_mbtowc (int ,int*,unsigned char const*,int) ;

__attribute__((used)) static int
gb18030_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  int ret;


  if (*s < 0x80)
    return ascii_mbtowc(conv,pwc,s,n);


  ret = gbk_mbtowc(conv,pwc,s,n);
  if (ret != RET_ILSEQ)
    return ret;

  ret = gb18030ext_mbtowc(conv,pwc,s,n);
  if (ret != RET_ILSEQ)
    return ret;



  ret = gb18030uni_mbtowc(conv,pwc,s,n);
  if (ret != RET_ILSEQ)
    return ret;

  {
    unsigned char c1 = s[0];
    if ((c1 >= 0xaa && c1 <= 0xaf) || (c1 >= 0xf8 && c1 <= 0xfe)) {
      if (n >= 2) {
        unsigned char c2 = s[1];
        if (c2 >= 0xa1 && c2 <= 0xfe) {
          *pwc = 0xe000 + 94 * (c1 >= 0xf8 ? c1 - 0xf2 : c1 - 0xaa) + (c2 - 0xa1);
          return 2;
        }
      } else
        return RET_TOOFEW(0);
    } else if (c1 >= 0xa1 && c1 <= 0xa7) {
      if (n >= 2) {
        unsigned char c2 = s[1];
        if (c2 >= 0x40 && c2 <= 0xa1 && c2 != 0x7f) {
          *pwc = 0xe4c6 + 96 * (c1 - 0xa1) + c2 - (c2 >= 0x80 ? 0x41 : 0x40);
          return 2;
        }
      } else
        return RET_TOOFEW(0);
    }
  }


  {
    unsigned char c1 = s[0];
    if (c1 >= 0x90 && c1 <= 0xe3) {
      if (n >= 2) {
        unsigned char c2 = s[1];
        if (c2 >= 0x30 && c2 <= 0x39) {
          if (n >= 3) {
            unsigned char c3 = s[2];
            if (c3 >= 0x81 && c3 <= 0xfe) {
              if (n >= 4) {
                unsigned char c4 = s[3];
                if (c4 >= 0x30 && c4 <= 0x39) {
                  unsigned int i = (((c1 - 0x90) * 10 + (c2 - 0x30)) * 126 + (c3 - 0x81)) * 10 + (c4 - 0x30);
                  if (i >= 0 && i < 0x100000) {
                    *pwc = (ucs4_t) (0x10000 + i);
                    return 4;
                  }
                }
                return RET_ILSEQ;
              }
              return RET_TOOFEW(0);
            }
            return RET_ILSEQ;
          }
          return RET_TOOFEW(0);
        }
        return RET_ILSEQ;
      }
      return RET_TOOFEW(0);
    }
    return RET_ILSEQ;
  }
}
