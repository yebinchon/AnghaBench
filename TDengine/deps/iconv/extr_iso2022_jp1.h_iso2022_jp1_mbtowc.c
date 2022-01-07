
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ucs4_t ;
typedef int state_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_7__ {int istate; } ;


 unsigned char ESC ;
 int RET_ILSEQ ;
 int RET_SHIFT_ILSEQ (int) ;
 int RET_TOOFEW (int) ;




 int abort () ;
 int ascii_mbtowc (TYPE_1__*,int *,unsigned char const*,int) ;
 int jisx0201_mbtowc (TYPE_1__*,int *,unsigned char const*,int) ;
 int jisx0208_mbtowc (TYPE_1__*,int *,unsigned char const*,int) ;
 int jisx0212_mbtowc (TYPE_1__*,int *,unsigned char const*,int) ;

__attribute__((used)) static int
iso2022_jp1_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
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
          state = 131;
          s += 3; count += 3;
          if (n < count+1)
            goto none;
          continue;
        }
        if (s[2] == 'J') {
          state = 130;
          s += 3; count += 3;
          if (n < count+1)
            goto none;
          continue;
        }
        goto ilseq;
      }
      if (s[1] == '$') {
        if (s[2] == '@' || s[2] == 'B') {

          state = 129;
          s += 3; count += 3;
          if (n < count+1)
            goto none;
          continue;
        }
        if (s[2] == '(') {
          if (n < count+4)
            goto none;
          if (s[3] == 'D') {
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
    case 131:
      if (c < 0x80) {
        int ret = ascii_mbtowc(conv,pwc,s,1);
        if (ret == RET_ILSEQ)
          goto ilseq;
        if (ret != 1) abort();
        conv->istate = state;
        return count+1;
      } else
        goto ilseq;
    case 130:
      if (c < 0x80) {
        int ret = jisx0201_mbtowc(conv,pwc,s,1);
        if (ret == RET_ILSEQ)
          goto ilseq;
        if (ret != 1) abort();
        conv->istate = state;
        return count+1;
      } else
        goto ilseq;
    case 129:
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
    case 128:
      if (n < count+2)
        goto none;
      if (s[0] < 0x80 && s[1] < 0x80) {
        int ret = jisx0212_mbtowc(conv,pwc,s,2);
        if (ret == RET_ILSEQ)
          goto ilseq;
        if (ret != 2) abort();
        conv->istate = state;
        return count+2;
      } else
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
