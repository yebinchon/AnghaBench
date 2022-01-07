
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ state_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_3__ {scalar_t__ ostate; } ;


 unsigned char ESC ;
 int RET_TOOSMALL ;
 int SPLIT_STATE ;
 scalar_t__ STATE_ASCII ;
 scalar_t__ STATE_JISX0208 ;
 int abort () ;
 int lasttwo ;
 scalar_t__ prevstate ;

__attribute__((used)) static int
iso2022_jp3_reset (conv_t conv, unsigned char *r, int n)
{
  state_t state = conv->ostate;
  SPLIT_STATE;
  {
    int count =
      (lasttwo ? (prevstate != state ? 3 : 0) + 2 : 0)
      + (state != STATE_ASCII ? 3 : 0);
    if (n < count)
      return RET_TOOSMALL;
    if (lasttwo) {
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
    if (state != STATE_ASCII) {
      r[0] = ESC;
      r[1] = '(';
      r[2] = 'B';
    }

    return count;
  }
}
