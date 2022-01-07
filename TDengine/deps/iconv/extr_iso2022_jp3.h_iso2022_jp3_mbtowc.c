
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ucs4_t ;
typedef int state_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_6__ {int istate; } ;


 unsigned char ESC ;
 int RET_ILSEQ ;
 int RET_SHIFT_ILSEQ (int) ;
 int RET_TOOFEW (int) ;






 int abort () ;
 int ascii_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int jisx0201_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int jisx0208_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int jisx0213_to_ucs4 (int,unsigned char const) ;
 int** jisx0213_to_ucs_combining ;

__attribute__((used)) static int
iso2022_jp3_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  ucs4_t last_wc = conv->istate >> 3;
  if (last_wc) {

    conv->istate &= 7;
    *pwc = last_wc;
    return 0;
  } else {
    state_t state = conv->istate;
    int count = 0;
    unsigned char c;
    for (;;) {
      c = *s;
      if (c == ESC) {
        if (n < count+3)
          goto none;
        if (s[1] == '(') {
          if (s[2] == 'B') {
            state = 133;
            s += 3; count += 3;
            if (n < count+1)
              goto none;
            continue;
          }
          if (s[2] == 'J') {
            state = 131;
            s += 3; count += 3;
            if (n < count+1)
              goto none;
            continue;
          }
          if (s[2] == 'I') {
            state = 132;
            s += 3; count += 3;
            if (n < count+1)
              goto none;
            continue;
          }
          goto ilseq;
        }
        if (s[1] == '$') {
          if (s[2] == '@' || s[2] == 'B') {

            state = 130;
            s += 3; count += 3;
            if (n < count+1)
              goto none;
            continue;
          }
          if (s[2] == '(') {
            if (n < count+4)
              goto none;
            if (s[3] == 'O' || s[3] == 'Q') {
              state = 129;
              s += 4; count += 4;
              if (n < count+1)
                goto none;
              continue;
            }
            if (s[3] == 'P') {
              state = 128;
              s += 4; count += 4;
              if (n < count+1)
                goto none;
              continue;
            }
          }
          goto ilseq;
        }
        goto ilseq;
      }
      break;
    }
    switch (state) {
      case 133:
        if (c < 0x80) {
          int ret = ascii_mbtowc(conv,pwc,s,1);
          if (ret == RET_ILSEQ)
            goto ilseq;
          if (ret != 1) abort();
          conv->istate = state;
          return count+1;
        } else
          goto ilseq;
      case 131:
        if (c < 0x80) {
          int ret = jisx0201_mbtowc(conv,pwc,s,1);
          if (ret == RET_ILSEQ)
            goto ilseq;
          if (ret != 1) abort();
          conv->istate = state;
          return count+1;
        } else
          goto ilseq;
      case 132:
        if (c < 0x80) {
          unsigned char buf = c+0x80;
          int ret = jisx0201_mbtowc(conv,pwc,&buf,1);
          if (ret == RET_ILSEQ)
            goto ilseq;
          if (ret != 1) abort();
          conv->istate = state;
          return count+1;
        } else
          goto ilseq;
      case 130:
        if (n < count+2)
          goto none;
        if (s[0] < 0x80 && s[1] < 0x80) {
          int ret = jisx0208_mbtowc(conv,pwc,s,2);
          if (ret == RET_ILSEQ)
            goto ilseq;
          if (ret != 2) abort();
          conv->istate = state;
          return count+2;
        } else
          goto ilseq;
      case 129:
      case 128:
        if (n < count+2)
          goto none;
        if (s[0] < 0x80 && s[1] < 0x80) {
          ucs4_t wc = jisx0213_to_ucs4(((state-129 +1)<<8)+s[0],s[1]);
          if (wc) {
            if (wc < 0x80) {

              ucs4_t wc1 = jisx0213_to_ucs_combining[wc - 1][0];
              ucs4_t wc2 = jisx0213_to_ucs_combining[wc - 1][1];


              *pwc = wc1;
              conv->istate = (wc2 << 3) | state;
            } else {
              *pwc = wc;
              conv->istate = state;
            }
            return count+2;
          }
        }
        goto ilseq;
      default: abort();
    }
  none:
    conv->istate = state;
    return RET_TOOFEW(count);

  ilseq:
    conv->istate = state;
    return RET_SHIFT_ILSEQ(count);
  }
}
