
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int ucs4_t ;
typedef void* state_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_13__ {void* istate; } ;


 int COMBINE_STATE ;
 unsigned char ESC ;
 int RET_ILSEQ ;
 int RET_SHIFT_ILSEQ (int) ;
 int RET_TOOFEW (int) ;
 unsigned char SI ;
 unsigned char SO ;
 int SPLIT_STATE ;
 int abort () ;
 int ascii_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int cns11643_1_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int cns11643_2_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int cns11643_3_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int cns11643_4_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int cns11643_5_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int cns11643_6_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int cns11643_7_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int gb2312_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int isoir165_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int state1 ;
 scalar_t__ state2 ;
 int state3 ;
 int state4 ;

__attribute__((used)) static int
iso2022_cn_ext_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
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
          if (s[3] == 'A') {
            state2 = 140;
            s += 4; count += 4;
            if (n < count+1)
              goto none;
            continue;
          }
          if (s[3] == 'G') {
            state2 = 141;
            s += 4; count += 4;
            if (n < count+1)
              goto none;
            continue;
          }
          if (s[3] == 'E') {
            state2 = 139;
            s += 4; count += 4;
            if (n < count+1)
              goto none;
            continue;
          }
        }
        if (s[2] == '*') {
          if (s[3] == 'H') {
            state3 = 137;
            s += 4; count += 4;
            if (n < count+1)
              goto none;
            continue;
          }
        }
        if (s[2] == '+') {
          if (s[3] == 'I') {
            state4 = 135;
            s += 4; count += 4;
            if (n < count+1)
              goto none;
            continue;
          }
          if (s[3] == 'J') {
            state4 = 134;
            s += 4; count += 4;
            if (n < count+1)
              goto none;
            continue;
          }
          if (s[3] == 'K') {
            state4 = 133;
            s += 4; count += 4;
            if (n < count+1)
              goto none;
            continue;
          }
          if (s[3] == 'L') {
            state4 = 132;
            s += 4; count += 4;
            if (n < count+1)
              goto none;
            continue;
          }
          if (s[3] == 'M') {
            state4 = 131;
            s += 4; count += 4;
            if (n < count+1)
              goto none;
            continue;
          }
        }
      }
      if (s[1] == 'N') {
        switch (state3) {
          case 136:
            goto ilseq;
          case 137:
            if (s[2] < 0x80 && s[3] < 0x80) {
              int ret = cns11643_2_mbtowc(conv,pwc,s+2,2);
              if (ret == RET_ILSEQ)
                goto ilseq;
              if (ret != 2) abort();
              COMBINE_STATE;
              conv->istate = state;
              return count+4;
            } else
              goto ilseq;
          default: abort();
        }
      }
      if (s[1] == 'O') {
        switch (state4) {
          case 130:
            goto ilseq;
          case 135:
            if (s[2] < 0x80 && s[3] < 0x80) {
              int ret = cns11643_3_mbtowc(conv,pwc,s+2,2);
              if (ret == RET_ILSEQ)
                goto ilseq;
              if (ret != 2) abort();
              COMBINE_STATE;
              conv->istate = state;
              return count+4;
            } else
              goto ilseq;
          case 134:
            if (s[2] < 0x80 && s[3] < 0x80) {
              int ret = cns11643_4_mbtowc(conv,pwc,s+2,2);
              if (ret == RET_ILSEQ)
                goto ilseq;
              if (ret != 2) abort();
              COMBINE_STATE;
              conv->istate = state;
              return count+4;
            } else
              goto ilseq;
          case 133:
            if (s[2] < 0x80 && s[3] < 0x80) {
              int ret = cns11643_5_mbtowc(conv,pwc,s+2,2);
              if (ret == RET_ILSEQ)
                goto ilseq;
              if (ret != 2) abort();
              COMBINE_STATE;
              conv->istate = state;
              return count+4;
            } else
              goto ilseq;
          case 132:
            if (s[2] < 0x80 && s[3] < 0x80) {
              int ret = cns11643_6_mbtowc(conv,pwc,s+2,2);
              if (ret == RET_ILSEQ)
                goto ilseq;
              if (ret != 2) abort();
              COMBINE_STATE;
              conv->istate = state;
              return count+4;
            } else
              goto ilseq;
          case 131:
            if (s[2] < 0x80 && s[3] < 0x80) {
              int ret = cns11643_7_mbtowc(conv,pwc,s+2,2);
              if (ret == RET_ILSEQ)
                goto ilseq;
              if (ret != 2) abort();
              COMBINE_STATE;
              conv->istate = state;
              return count+4;
            } else
              goto ilseq;
          default: abort();
        }
      }
      goto ilseq;
    }
    if (c == SO) {
      if (state2 != 140 && state2 != 141 && state2 != 139)
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
        if (*pwc == 0x000a || *pwc == 0x000d) {
          state2 = 138; state3 = 136; state4 = 136;
        }
        COMBINE_STATE;
        conv->istate = state;
        return count+1;
      } else
        goto ilseq;
    case 128:
      if (n < count+2)
        goto none;
      if (s[0] < 0x80 && s[1] < 0x80) {
        int ret;
        switch (state2) {
          case 138:
            goto ilseq;
          case 140:
            ret = gb2312_mbtowc(conv,pwc,s,2); break;
          case 141:
            ret = cns11643_1_mbtowc(conv,pwc,s,2); break;
          case 139:
            ret = isoir165_mbtowc(conv,pwc,s,2); break;
          default: abort();
        }
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
