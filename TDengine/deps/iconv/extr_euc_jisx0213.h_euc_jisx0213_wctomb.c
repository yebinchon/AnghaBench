
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
 unsigned int euc_jisx0213_comp_table02e5_idx ;
 unsigned int euc_jisx0213_comp_table02e5_len ;
 unsigned int euc_jisx0213_comp_table02e9_idx ;
 unsigned int euc_jisx0213_comp_table02e9_len ;
 unsigned int euc_jisx0213_comp_table0300_idx ;
 unsigned int euc_jisx0213_comp_table0300_len ;
 unsigned int euc_jisx0213_comp_table0301_idx ;
 unsigned int euc_jisx0213_comp_table0301_len ;
 unsigned int euc_jisx0213_comp_table309a_idx ;
 unsigned int euc_jisx0213_comp_table309a_len ;
 TYPE_3__* euc_jisx0213_comp_table_data ;
 unsigned short ucs4_to_jisx0213 (int) ;

__attribute__((used)) static int
euc_jisx0213_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  int count = 0;
  unsigned short lasttwo = conv->ostate;

  if (lasttwo) {

    unsigned int idx;
    unsigned int len;

    if (wc == 0x02e5)
      idx = euc_jisx0213_comp_table02e5_idx,
      len = euc_jisx0213_comp_table02e5_len;
    else if (wc == 0x02e9)
      idx = euc_jisx0213_comp_table02e9_idx,
      len = euc_jisx0213_comp_table02e9_len;
    else if (wc == 0x0300)
      idx = euc_jisx0213_comp_table0300_idx,
      len = euc_jisx0213_comp_table0300_len;
    else if (wc == 0x0301)
      idx = euc_jisx0213_comp_table0301_idx,
      len = euc_jisx0213_comp_table0301_len;
    else if (wc == 0x309a)
      idx = euc_jisx0213_comp_table309a_idx,
      len = euc_jisx0213_comp_table309a_len;
    else
      goto not_combining;

    do
      if (euc_jisx0213_comp_table_data[idx].base == lasttwo)
        break;
    while (++idx, --len > 0);

    if (len > 0) {

      if (n >= 2) {
        lasttwo = euc_jisx0213_comp_table_data[idx].composed;
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

  if (wc < 0x80) {

    if (n > count) {
      r[0] = (unsigned char) wc;
      conv->ostate = 0;
      return count+1;
    } else
      return RET_TOOSMALL;
  } else if (wc >= 0xff61 && wc <= 0xff9f) {

    if (n >= count+2) {
      r[0] = 0x8e;
      r[1] = wc - 0xfec0;
      conv->ostate = 0;
      return count+2;
    } else
      return RET_TOOSMALL;
  } else {
    unsigned short jch = ucs4_to_jisx0213(wc);
    if (jch != 0) {
      if (jch & 0x0080) {


        if (jch & 0x8000) abort();
        conv->ostate = jch | 0x8080;
        return count+0;
      }
      if (jch & 0x8000) {

        if (n >= count+3) {
          r[0] = 0x8f;
          r[1] = (jch >> 8) | 0x80;
          r[2] = (jch & 0xff) | 0x80;
          conv->ostate = 0;
          return count+3;
        } else
          return RET_TOOSMALL;
      } else {

        if (n >= count+2) {
          r[0] = (jch >> 8) | 0x80;
          r[1] = (jch & 0xff) | 0x80;
          conv->ostate = 0;
          return count+2;
        } else
          return RET_TOOSMALL;
      }
    }
    return RET_ILUNI;
  }
}
