
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ucs4_t ;
typedef scalar_t__ state_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_8__ {int base; int composed; } ;
struct TYPE_7__ {scalar_t__ ostate; } ;


 int COMBINE_STATE ;
 int COMBINE_STATE_NO_LASTTWO ;
 unsigned char ESC ;
 int RET_ILUNI ;
 int RET_TOOSMALL ;
 int SPLIT_STATE ;
 scalar_t__ STATE_ASCII ;
 scalar_t__ STATE_JISX0201KATAKANA ;
 scalar_t__ STATE_JISX0201ROMAN ;
 scalar_t__ STATE_JISX0208 ;
 scalar_t__ STATE_JISX02131 ;
 scalar_t__ STATE_JISX02132 ;
 int abort () ;
 int ascii_wctomb (TYPE_1__*,unsigned char*,int,int) ;
 unsigned int iso2022_jp3_comp_table02e5_idx ;
 unsigned int iso2022_jp3_comp_table02e5_len ;
 unsigned int iso2022_jp3_comp_table02e9_idx ;
 unsigned int iso2022_jp3_comp_table02e9_len ;
 unsigned int iso2022_jp3_comp_table0300_idx ;
 unsigned int iso2022_jp3_comp_table0300_len ;
 unsigned int iso2022_jp3_comp_table0301_idx ;
 unsigned int iso2022_jp3_comp_table0301_len ;
 unsigned int iso2022_jp3_comp_table309a_idx ;
 unsigned int iso2022_jp3_comp_table309a_len ;
 TYPE_5__* iso2022_jp3_comp_table_data ;
 int jisx0201_wctomb (TYPE_1__*,unsigned char*,int,int) ;
 int jisx0208_wctomb (TYPE_1__*,unsigned char*,int,int) ;
 int lasttwo ;
 scalar_t__ prevstate ;
 unsigned short ucs4_to_jisx0213 (int) ;

__attribute__((used)) static int
iso2022_jp3_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  int count = 0;
  unsigned char buf[2];
  unsigned short jch;
  int ret;
  state_t state = conv->ostate;
  SPLIT_STATE;

  if (lasttwo) {

    unsigned int idx;
    unsigned int len;

    if (wc == 0x02e5)
      idx = iso2022_jp3_comp_table02e5_idx,
      len = iso2022_jp3_comp_table02e5_len;
    else if (wc == 0x02e9)
      idx = iso2022_jp3_comp_table02e9_idx,
      len = iso2022_jp3_comp_table02e9_len;
    else if (wc == 0x0300)
      idx = iso2022_jp3_comp_table0300_idx,
      len = iso2022_jp3_comp_table0300_len;
    else if (wc == 0x0301)
      idx = iso2022_jp3_comp_table0301_idx,
      len = iso2022_jp3_comp_table0301_len;
    else if (wc == 0x309a)
      idx = iso2022_jp3_comp_table309a_idx,
      len = iso2022_jp3_comp_table309a_len;
    else
      goto not_combining;

    do
      if (iso2022_jp3_comp_table_data[idx].base == lasttwo)
        break;
    while (++idx, --len > 0);

    if (len > 0) {




      count = (state != STATE_JISX02131 ? 4 : 0) + 2;
      if (n < count)
        return RET_TOOSMALL;
      if (state != STATE_JISX02131) {
        r[0] = ESC;
        r[1] = '$';
        r[2] = '(';
        r[3] = 'Q';
        r += 4;
        state = STATE_JISX02131;
      }
      lasttwo = iso2022_jp3_comp_table_data[idx].composed;
      r[0] = (lasttwo >> 8) & 0xff;
      r[1] = lasttwo & 0xff;
      COMBINE_STATE_NO_LASTTWO;
      conv->ostate = state;
      return count;
    }

  not_combining:


    count = (prevstate != state ? 3 : 0) + 2;
    if (n < count)
      return RET_TOOSMALL;
    if (prevstate != state) {
      if (state != STATE_JISX0208) abort();
      r[0] = ESC;
      r[1] = '$';
      r[2] = 'B';
      r += 3;
    }
    r[0] = (lasttwo >> 8) & 0xff;
    r[1] = lasttwo & 0xff;
    r += 2;
  }


  ret = ascii_wctomb(conv,buf,wc,1);
  if (ret != RET_ILUNI) {
    if (ret != 1) abort();
    if (buf[0] < 0x80) {
      count += (state == STATE_ASCII ? 1 : 4);
      if (n < count)
        return RET_TOOSMALL;
      if (state != STATE_ASCII) {
        r[0] = ESC;
        r[1] = '(';
        r[2] = 'B';
        r += 3;
        state = STATE_ASCII;
      }
      r[0] = buf[0];
      COMBINE_STATE_NO_LASTTWO;
      conv->ostate = state;
      return count;
    }
  }


  ret = jisx0201_wctomb(conv,buf,wc,1);
  if (ret != RET_ILUNI) {
    if (ret != 1) abort();
    if (buf[0] < 0x80) {
      count += (state == STATE_JISX0201ROMAN ? 1 : 4);
      if (n < count)
        return RET_TOOSMALL;
      if (state != STATE_JISX0201ROMAN) {
        r[0] = ESC;
        r[1] = '(';
        r[2] = 'J';
        r += 3;
        state = STATE_JISX0201ROMAN;
      }
      r[0] = buf[0];
      COMBINE_STATE_NO_LASTTWO;
      conv->ostate = state;
      return count;
    }
  }

  jch = ucs4_to_jisx0213(wc);


  ret = jisx0208_wctomb(conv,buf,wc,2);
  if (ret != RET_ILUNI) {
    if (ret != 2) abort();
    if (buf[0] < 0x80 && buf[1] < 0x80) {
      if (jch & 0x0080) {

        prevstate = state;
        lasttwo = jch & 0x7f7f;
        state = STATE_JISX0208;
        COMBINE_STATE;
        conv->ostate = state;
        return count;
      } else {
        count += (state == STATE_JISX0208 ? 2 : 5);
        if (n < count)
          return RET_TOOSMALL;
        if (state != STATE_JISX0208) {
          r[0] = ESC;
          r[1] = '$';
          r[2] = 'B';
          r += 3;
          state = STATE_JISX0208;
        }
        r[0] = buf[0];
        r[1] = buf[1];
        COMBINE_STATE_NO_LASTTWO;
        conv->ostate = state;
        return count;
      }
    }
  }


  if (jch != 0) {
    if (jch & 0x8000) {

      if (state != STATE_JISX02132) {
        count += 4;
        if (n < count)
          return RET_TOOSMALL;
        r[0] = ESC;
        r[1] = '$';
        r[2] = '(';
        r[3] = 'P';
        r += 4;
        state = STATE_JISX02132;
      }
    } else {

      if (state != STATE_JISX02131) {
        count += 4;
        if (n < count)
          return RET_TOOSMALL;
        r[0] = ESC;
        r[1] = '$';
        r[2] = '(';
        r[3] = 'Q';
        r += 4;
        state = STATE_JISX02131;
      }
    }
    if (jch & 0x0080) {


      if (jch & 0x8000) abort();
      prevstate = state;
      lasttwo = jch & 0x7f7f;
      COMBINE_STATE;
      conv->ostate = state;
      return count;
    }
    count += 2;
    if (n < count)
      return RET_TOOSMALL;
    r[0] = (jch >> 8) & 0x7f;
    r[1] = jch & 0x7f;
    COMBINE_STATE_NO_LASTTWO;
    conv->ostate = state;
    return count;
  }



  ret = jisx0201_wctomb(conv,buf,wc,1);
  if (ret != RET_ILUNI) {
    if (ret != 1) abort();
    if (buf[0] >= 0x80) {
      count += (state == STATE_JISX0201KATAKANA ? 1 : 4);
      if (n < count)
        return RET_TOOSMALL;
      if (state != STATE_JISX0201KATAKANA) {
        r[0] = ESC;
        r[1] = '(';
        r[2] = 'I';
        r += 3;
        state = STATE_JISX0201KATAKANA;
      }
      r[0] = buf[0]-0x80;
      COMBINE_STATE_NO_LASTTWO;
      conv->ostate = state;
      return count;
    }
  }

  return RET_ILUNI;
}
