
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int ucs4_t ;
typedef void* state_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_11__ {void* istate; } ;


 int COMBINE_STATE ;
 unsigned char ESC ;
 int RET_ILSEQ ;
 int RET_SHIFT_ILSEQ (int) ;
 int RET_TOOFEW (int) ;
 int SPLIT_STATE ;
 int abort () ;
 int ascii_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int gb2312_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int iso8859_1_mbtowc (TYPE_1__*,int*,unsigned char*,int) ;
 int iso8859_7_mbtowc (TYPE_1__*,int*,unsigned char*,int) ;
 int jisx0201_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int jisx0208_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int jisx0212_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int ksc5601_mbtowc (TYPE_1__*,int*,unsigned char const*,int) ;
 int state1 ;
 int state2 ;

__attribute__((used)) static int
iso2022_jp2_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  state_t state = conv->istate;
  SPLIT_STATE;
  int count = 0;
  unsigned char c;
  for (;;) {
    c = *s;
    if (c == ESC) {
      if (n < count+3)
        goto none;
      if (s[1] == '(') {
        if (s[2] == 'B') {
          state1 = 137;
          s += 3; count += 3;
          if (n < count+1)
            goto none;
          continue;
        }
        if (s[2] == 'J') {
          state1 = 131;
          s += 3; count += 3;
          if (n < count+1)
            goto none;
          continue;
        }
        if (s[2] == 'I') {
          state1 = 132;
          s += 3; count += 3;
          if (n < count+1)
            goto none;
          continue;
        }
        goto ilseq;
      }
      if (s[1] == '$') {
        if (s[2] == '@' || s[2] == 'B') {

          state1 = 130;
          s += 3; count += 3;
          if (n < count+1)
            goto none;
          continue;
        }
        if (s[2] == 'A') {
          state1 = 133;
          s += 3; count += 3;
          if (n < count+1)
            goto none;
          continue;
        }
        if (s[2] == '(') {
          if (n < count+4)
            goto none;
          if (s[3] == 'D') {
            state1 = 129;
            s += 4; count += 4;
            if (n < count+1)
              goto none;
            continue;
          }
          if (s[3] == 'C') {
            state1 = 128;
            s += 4; count += 4;
            if (n < count+1)
              goto none;
            continue;
          }
          goto ilseq;
        }
        goto ilseq;
      }
      if (s[1] == '.') {
        if (n < count+3)
          goto none;
        if (s[2] == 'A') {
          state2 = 136;
          s += 3; count += 3;
          if (n < count+1)
            goto none;
          continue;
        }
        if (s[2] == 'F') {
          state2 = 135;
          s += 3; count += 3;
          if (n < count+1)
            goto none;
          continue;
        }
        goto ilseq;
      }
      if (s[1] == 'N') {
        switch (state2) {
          case 134:
            goto ilseq;
          case 136:
            if (s[2] < 0x80) {
              unsigned char buf = s[2]+0x80;
              int ret = iso8859_1_mbtowc(conv,pwc,&buf,1);
              if (ret == RET_ILSEQ)
                goto ilseq;
              if (ret != 1) abort();
              COMBINE_STATE;
              conv->istate = state;
              return count+3;
            } else
              goto ilseq;
          case 135:
            if (s[2] < 0x80) {
              unsigned char buf = s[2]+0x80;
              int ret = iso8859_7_mbtowc(conv,pwc,&buf,1);
              if (ret == RET_ILSEQ)
                goto ilseq;
              if (ret != 1) abort();
              COMBINE_STATE;
              conv->istate = state;
              return count+3;
            } else
              goto ilseq;
          default: abort();
        }
      }
      goto ilseq;
    }
    break;
  }
  switch (state1) {
    case 137:
      if (c < 0x80) {
        int ret = ascii_mbtowc(conv,pwc,s,1);
        if (ret == RET_ILSEQ)
          goto ilseq;
        if (ret != 1) abort();
        if (*pwc == 0x000a || *pwc == 0x000d)
          state2 = 134;
        COMBINE_STATE;
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
        if (*pwc == 0x000a || *pwc == 0x000d)
          state2 = 134;
        COMBINE_STATE;
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
        COMBINE_STATE;
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
        COMBINE_STATE;
        conv->istate = state;
        return count+2;
      } else
        goto ilseq;
    case 129:
      if (n < count+2)
        goto none;
      if (s[0] < 0x80 && s[1] < 0x80) {
        int ret = jisx0212_mbtowc(conv,pwc,s,2);
        if (ret == RET_ILSEQ)
          goto ilseq;
        if (ret != 2) abort();
        COMBINE_STATE;
        conv->istate = state;
        return count+2;
      } else
        goto ilseq;
    case 133:
      if (n < count+2)
        goto none;
      if (s[0] < 0x80 && s[1] < 0x80) {
        int ret = gb2312_mbtowc(conv,pwc,s,2);
        if (ret == RET_ILSEQ)
          goto ilseq;
        if (ret != 2) abort();
        COMBINE_STATE;
        conv->istate = state;
        return count+2;
      } else
        goto ilseq;
    case 128:
      if (n < count+2)
        goto none;
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
