
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* conv_t ;
struct TYPE_3__ {unsigned char ostate; } ;


 int RET_TOOSMALL ;

__attribute__((used)) static int
big5hkscs2001_reset (conv_t conv, unsigned char *r, int n)
{
  unsigned char last = conv->ostate;

  if (last) {
    if (n < 2)
      return RET_TOOSMALL;
    r[0] = 0x88;
    r[1] = last;

    return 2;
  } else
    return 0;
}
