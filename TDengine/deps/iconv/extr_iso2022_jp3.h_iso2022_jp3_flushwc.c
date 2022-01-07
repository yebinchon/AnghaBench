
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ucs4_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_3__ {int istate; } ;



__attribute__((used)) static int
iso2022_jp3_flushwc (conv_t conv, ucs4_t *pwc)
{
  ucs4_t last_wc = conv->istate >> 3;
  if (last_wc) {

    conv->istate &= 7;
    *pwc = last_wc;
    return 1;
  } else
    return 0;
}
