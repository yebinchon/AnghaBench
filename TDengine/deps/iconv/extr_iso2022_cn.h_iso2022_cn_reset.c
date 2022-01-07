
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int state_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_3__ {int ostate; } ;


 int RET_TOOSMALL ;
 unsigned char SI ;
 int SPLIT_STATE ;
 scalar_t__ STATE_ASCII ;
 scalar_t__ state1 ;
 int state2 ;
 int state3 ;

__attribute__((used)) static int
iso2022_cn_reset (conv_t conv, unsigned char *r, int n)
{
  state_t state = conv->ostate;
  SPLIT_STATE;
  (void)state2;
  (void)state3;
  if (state1 != STATE_ASCII) {
    if (n < 1)
      return RET_TOOSMALL;
    r[0] = SI;

    return 1;
  } else
    return 0;
}
