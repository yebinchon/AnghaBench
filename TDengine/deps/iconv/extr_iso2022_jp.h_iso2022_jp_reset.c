
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
 scalar_t__ STATE_ASCII ;

__attribute__((used)) static int
iso2022_jp_reset (conv_t conv, unsigned char *r, int n)
{
  state_t state = conv->ostate;
  if (state != STATE_ASCII) {
    if (n < 3)
      return RET_TOOSMALL;
    r[0] = ESC;
    r[1] = '(';
    r[2] = 'B';

    return 3;
  } else
    return 0;
}
