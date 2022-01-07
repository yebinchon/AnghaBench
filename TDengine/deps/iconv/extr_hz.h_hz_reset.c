
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ state_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_3__ {scalar_t__ ostate; } ;


 int RET_TOOSMALL ;

__attribute__((used)) static int
hz_reset (conv_t conv, unsigned char *r, int n)
{
  state_t state = conv->ostate;
  if (state) {
    if (n < 2)
      return RET_TOOSMALL;
    r[0] = '~';
    r[1] = '}';

    return 2;
  } else
    return 0;
}
