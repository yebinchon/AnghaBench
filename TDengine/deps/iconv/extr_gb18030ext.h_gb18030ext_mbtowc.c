
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ucs4_t ;
typedef int conv_t ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;
 unsigned short* gb18030ext_2uni_pagea9 ;
 unsigned short* gb18030ext_2uni_pagefe ;

__attribute__((used)) static int
gb18030ext_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c1 = s[0];
  if ((c1 == 0xa2) || (c1 >= 0xa4 && c1 <= 0xa9) || (c1 == 0xd7) || (c1 == 0xfe)) {
    if (n >= 2) {
      unsigned char c2 = s[1];
      if ((c2 >= 0x40 && c2 < 0x7f) || (c2 >= 0x80 && c2 < 0xff)) {
        unsigned int i = 190 * (c1 - 0x81) + (c2 - (c2 >= 0x80 ? 0x41 : 0x40));
        unsigned short wc = 0xfffd;
        switch (c1) {
          case 0xa2:
            if (i >= 6376 && i <= 6381)
              wc = 0xe766 + (i - 6376);
            else if (i == 6432)
              wc = 0x20ac;
            else if (i == 6433)
              wc = 0xe76d;
            else if (i >= 6444 && i <= 6445)
              wc = 0xe76e + (i - 6444);
            else if (i >= 6458 && i <= 6459)
              wc = 0xe770 + (i - 6458);
            break;
          case 0xa4:
            if (i >= 6829 && i <= 6839)
              wc = 0xe772 + (i - 6829);
            break;
          case 0xa5:
            if (i >= 7022 && i <= 7029)
              wc = 0xe77d + (i - 7022);
            break;
          case 0xa6:
            if (i >= 7150 && i <= 7157)
              wc = 0xe785 + (i - 7150);
            else if (i >= 7182 && i <= 7190)
              wc = 0xe78d + (i - 7182);
            else if (i >= 7201 && i <= 7202)
              wc = 0xe794 + (i - 7201);
            else if (i == 7208)
              wc = 0xe796;
            else if (i >= 7211 && i <= 7219)
              wc = 0xe797 + (i - 7211);
            break;
          case 0xa7:
            if (i >= 7349 && i <= 7363)
              wc = 0xe7a0 + (i - 7349);
            else if (i >= 7397 && i <= 7409)
              wc = 0xe7af + (i - 7397);
            break;
          case 0xa8:
            if (i >= 7495 && i <= 7505)
              wc = 0xe7bc + (i - 7495);
            else if (i == 7533)
              wc = 0xe7c7;
            else if (i == 7536)
              wc = 0x01f9;
            else if (i >= 7538 && i <= 7541)
              wc = 0xe7c9 + (i - 7538);
            else if (i >= 7579 && i <= 7599)
              wc = 0xe7cd + (i - 7579);
            break;
          case 0xa9:
            if (i == 7624)
              wc = 0xe7e2;
            else if (i == 7627)
              wc = 0xe7e3;
            else if (i >= 7629 && i <= 7631)
              wc = 0xe7e4 + (i - 7629);
            else if (i >= 7672 && i < 7685)
              wc = gb18030ext_2uni_pagea9[i-7672];
            else if (i >= 7686 && i <= 7698)
              wc = 0xe7f4 + (i - 7686);
            else if (i >= 7775 && i <= 7789)
              wc = 0xe801 + (i - 7775);
            break;
          case 0xd7:
            if (i >= 16525 && i <= 16529)
              wc = 0xe810 + (i - 16525);
            break;
          case 0xfe:
            if (i < 23846)
              wc = gb18030ext_2uni_pagefe[i-23750];
            break;
          default:
            break;
        }
        if (wc != 0xfffd) {
          *pwc = (ucs4_t) wc;
          return 2;
        }
      }
      return RET_ILSEQ;
    }
    return RET_TOOFEW(0);
  }
  return RET_ILSEQ;
}
