
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ucs4_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_5__ {unsigned short base; unsigned short composed; } ;
struct TYPE_4__ {unsigned short ostate; } ;


 int RET_ILUNI ;
 int RET_TOOSMALL ;
 int abort () ;
 unsigned int shift_jisx0213_comp_table02e5_idx ;
 unsigned int shift_jisx0213_comp_table02e5_len ;
 unsigned int shift_jisx0213_comp_table02e9_idx ;
 unsigned int shift_jisx0213_comp_table02e9_len ;
 unsigned int shift_jisx0213_comp_table0300_idx ;
 unsigned int shift_jisx0213_comp_table0300_len ;
 unsigned int shift_jisx0213_comp_table0301_idx ;
 unsigned int shift_jisx0213_comp_table0301_len ;
 unsigned int shift_jisx0213_comp_table309a_idx ;
 unsigned int shift_jisx0213_comp_table309a_len ;
 TYPE_3__* shift_jisx0213_comp_table_data ;
 unsigned short ucs4_to_jisx0213 (int) ;

__attribute__((used)) static int
shift_jisx0213_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  int count = 0;
  unsigned short lasttwo = conv->ostate;

  if (lasttwo) {

    unsigned int idx;
    unsigned int len;

    if (wc == 0x02e5)
      idx = shift_jisx0213_comp_table02e5_idx,
      len = shift_jisx0213_comp_table02e5_len;
    else if (wc == 0x02e9)
      idx = shift_jisx0213_comp_table02e9_idx,
      len = shift_jisx0213_comp_table02e9_len;
    else if (wc == 0x0300)
      idx = shift_jisx0213_comp_table0300_idx,
      len = shift_jisx0213_comp_table0300_len;
    else if (wc == 0x0301)
      idx = shift_jisx0213_comp_table0301_idx,
      len = shift_jisx0213_comp_table0301_len;
    else if (wc == 0x309a)
      idx = shift_jisx0213_comp_table309a_idx,
      len = shift_jisx0213_comp_table309a_len;
    else
      goto not_combining;

    do
      if (shift_jisx0213_comp_table_data[idx].base == lasttwo)
        break;
    while (++idx, --len > 0);

    if (len > 0) {

      if (n >= 2) {
        lasttwo = shift_jisx0213_comp_table_data[idx].composed;
        r[0] = (lasttwo >> 8) & 0xff;
        r[1] = lasttwo & 0xff;
        conv->ostate = 0;
        return 2;
      } else
        return RET_TOOSMALL;
    }

  not_combining:

    if (n < 2)
      return RET_TOOSMALL;
    r[0] = (lasttwo >> 8) & 0xff;
    r[1] = lasttwo & 0xff;
    r += 2;
    count = 2;
  }

  if (wc < 0x80 && wc != 0x5c && wc != 0x7e) {

    if (n > count) {
      r[0] = (unsigned char) wc;
      conv->ostate = 0;
      return count+1;
    } else
      return RET_TOOSMALL;
  } else if (wc == 0x00a5) {
    if (n > count) {
      r[0] = 0x5c;
      conv->ostate = 0;
      return count+1;
    } else
      return RET_TOOSMALL;
  } else if (wc == 0x203e) {
    if (n > count) {
      r[0] = 0x7e;
      conv->ostate = 0;
      return count+1;
    } else
      return RET_TOOSMALL;
  } else if (wc >= 0xff61 && wc <= 0xff9f) {

    if (n > count) {
      r[0] = wc - 0xfec0;
      conv->ostate = 0;
      return count+1;
    } else
      return RET_TOOSMALL;
  } else {
    unsigned int s1, s2;
    unsigned short jch = ucs4_to_jisx0213(wc);
    if (jch != 0) {

      s1 = jch >> 8;
      s2 = jch & 0x7f;
      s1 -= 0x21;
      s2 -= 0x21;
      if (s1 >= 0x5e) {

        if (s1 >= 0xcd)
          s1 -= 102;
        else if (s1 >= 0x8b || s1 == 0x87)
          s1 -= 40;
        else
          s1 -= 34;

      }
      if (s1 & 1)
        s2 += 0x5e;
      s1 = s1 >> 1;
      if (s1 < 0x1f)
        s1 += 0x81;
      else
        s1 += 0xc1;
      if (s2 < 0x3f)
        s2 += 0x40;
      else
        s2 += 0x41;
      if (jch & 0x0080) {


        if (jch & 0x8000) abort();
        conv->ostate = (s1 << 8) | s2;
        return count+0;
      }

      if (n >= count+2) {
        r[0] = s1;
        r[1] = s2;
        conv->ostate = 0;
        return count+2;
      } else
        return RET_TOOSMALL;
    }
    return RET_ILUNI;
  }
}
