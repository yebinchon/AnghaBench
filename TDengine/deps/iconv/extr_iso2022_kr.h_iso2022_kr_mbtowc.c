
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ucs4_t ;
typedef void* state_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_5__ {void* istate; } ;


 int COMBINE_STATE ;
 unsigned char ESC ;
 int RET_ILSEQ ;
 int RET_SHIFT_ILSEQ (int) ;
 int RET_TOOFEW (int) ;
 unsigned char SI ;
 unsigned char SO ;
 int SPLIT_STATE ;
 scalar_t__ STATE2_DESIGNATED_KSC5601 ;
 scalar_t__ STATE2_NONE ;


 int abort () ;
 int ascii_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int ksc5601_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int state1 ;
 scalar_t__ state2 ;

__attribute__((used)) static int
iso2022_kr_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  state_t state = conv->istate;
  SPLIT_STATE;
  int count = 0;
  unsigned char c;
  for (;;) {
    c = *s;
    if (c == ESC) {
      if (n < count+4)
        goto none;
      if (s[1] == '$') {
        if (s[2] == ')') {
          if (s[3] == 'C') {
            state2 = STATE2_DESIGNATED_KSC5601;
            s += 4; count += 4;
            if (n < count+1)
              goto none;
            continue;
          }
        }
      }
      goto ilseq;
    }
    if (c == SO) {
      if (state2 != STATE2_DESIGNATED_KSC5601)
        goto ilseq;
      state1 = 128;
      s++; count++;
      if (n < count+1)
        goto none;
      continue;
    }
    if (c == SI) {
      state1 = 129;
      s++; count++;
      if (n < count+1)
        goto none;
      continue;
    }
    break;
  }
  switch (state1) {
    case 129:
      if (c < 0x80) {
        int ret = ascii_mbtowc(conv,pwc,s,1);
        if (ret == RET_ILSEQ)
          goto ilseq;
        if (ret != 1) abort();




        COMBINE_STATE;
        conv->istate = state;
        return count+1;
      } else
        goto ilseq;
    case 128:
      if (n < count+2)
        goto none;
      if (state2 != STATE2_DESIGNATED_KSC5601) abort();
      if (s[0] < 0x80 && s[1] < 0x80) {
        int ret = ksc5601_mbtowc(conv,pwc,s,2);
        if (ret == RET_ILSEQ)
          goto ilseq;
        if (ret != 2) abort();
        COMBINE_STATE;
        conv->istate = state;
        return count+2;
      } else
        goto ilseq;
    default: abort();
  }

none:
  COMBINE_STATE;
  conv->istate = state;
  return RET_TOOFEW(count);

ilseq:
  COMBINE_STATE;
  conv->istate = state;
  return RET_SHIFT_ILSEQ(count);
}
