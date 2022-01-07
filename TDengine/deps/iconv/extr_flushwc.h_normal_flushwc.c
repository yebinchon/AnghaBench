
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ucs4_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_3__ {scalar_t__ istate; } ;



__attribute__((used)) static int
normal_flushwc (conv_t conv, ucs4_t *pwc)
{
  ucs4_t last_wc = conv->istate;
  if (last_wc) {

    conv->istate = 0;
    *pwc = (ucs4_t) last_wc;
    return 1;
  } else
    return 0;
}
