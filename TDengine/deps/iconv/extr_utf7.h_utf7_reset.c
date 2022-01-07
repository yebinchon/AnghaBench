
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int state_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_3__ {int ostate; } ;


 int RET_TOOSMALL ;
 int abort () ;

__attribute__((used)) static int
utf7_reset (conv_t conv, unsigned char *r, int n)
{
  state_t state = conv->ostate;
  if (state & 3) {

    unsigned int count = ((state & 3) >= 2 ? 1 : 0) + 1;
    if (n < count)
      return RET_TOOSMALL;
    if ((state & 3) >= 2) {
      unsigned int i = state & -4;
      unsigned char c;
      if (i < 26)
        c = i+'A';
      else if (i < 52)
        c = i-26+'a';
      else if (i < 62)
        c = i-52+'0';
      else if (i == 62)
        c = '+';
      else if (i == 63)
        c = '/';
      else
        abort();
      *r++ = c;
    }
    *r++ = '-';

    return count;
  } else
    return 0;
}
