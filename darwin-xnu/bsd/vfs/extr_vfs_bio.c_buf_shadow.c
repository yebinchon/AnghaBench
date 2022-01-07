
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* buf_t ;
struct TYPE_3__ {int b_lflags; } ;


 int BL_SHADOW ;

int
buf_shadow(buf_t bp)
{
 if (bp->b_lflags & BL_SHADOW)
  return 1;
 return 0;
}
