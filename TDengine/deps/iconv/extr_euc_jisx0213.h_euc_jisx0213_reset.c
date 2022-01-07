
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int state_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_3__ {int ostate; } ;


 int RET_TOOSMALL ;

__attribute__((used)) static int
euc_jisx0213_reset (conv_t conv, unsigned char *r, int n)
{
  state_t lasttwo = conv->ostate;

  if (lasttwo) {
    if (n < 2)
      return RET_TOOSMALL;
    r[0] = (lasttwo >> 8) & 0xff;
    r[1] = lasttwo & 0xff;

    return 2;
  } else
    return 0;
}
