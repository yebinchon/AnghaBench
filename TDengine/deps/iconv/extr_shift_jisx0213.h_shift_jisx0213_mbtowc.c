
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ucs4_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_3__ {int istate; } ;


 int RET_ILSEQ ;
 int RET_TOOFEW (int ) ;
 int jisx0213_to_ucs4 (int,unsigned char) ;
 int** jisx0213_to_ucs_combining ;

__attribute__((used)) static int
shift_jisx0213_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  ucs4_t last_wc = conv->istate;
  if (last_wc) {

    conv->istate = 0;
    *pwc = last_wc;
    return 0;
  } else {
    unsigned char c = *s;
    if (c < 0x80) {

      if (c == 0x5c)
        *pwc = (ucs4_t) 0x00a5;
      else if (c == 0x7e)
        *pwc = (ucs4_t) 0x203e;
      else
        *pwc = (ucs4_t) c;
      return 1;
    } else if (c >= 0xa1 && c <= 0xdf) {
      *pwc = c + 0xfec0;
      return 1;
    } else {
      if ((c >= 0x81 && c <= 0x9f) || (c >= 0xe0 && c <= 0xfc)) {

        if (n >= 2) {
          unsigned char c2 = s[1];
          if ((c2 >= 0x40 && c2 <= 0x7e) || (c2 >= 0x80 && c2 <= 0xfc)) {
            unsigned int c1;
            ucs4_t wc;

            if (c < 0xe0)
              c -= 0x81;
            else
              c -= 0xc1;
            if (c2 < 0x80)
              c2 -= 0x40;
            else
              c2 -= 0x41;

            c1 = 2 * c;
            if (c2 >= 0x5e)
              c2 -= 0x5e, c1++;
            c2 += 0x21;
            if (c1 >= 0x5e) {

              if (c1 >= 0x67)
                c1 += 230;
              else if (c1 >= 0x63 || c1 == 0x5f)
                c1 += 168;
              else
                c1 += 162;
            }
            wc = jisx0213_to_ucs4(0x121+c1,c2);
            if (wc) {
              if (wc < 0x80) {

                ucs4_t wc1 = jisx0213_to_ucs_combining[wc - 1][0];
                ucs4_t wc2 = jisx0213_to_ucs_combining[wc - 1][1];


                *pwc = wc1;
                conv->istate = wc2;
              } else
                *pwc = wc;
              return 2;
            }
          }
        } else
          return RET_TOOFEW(0);
      }
      return RET_ILSEQ;
    }
  }
}
