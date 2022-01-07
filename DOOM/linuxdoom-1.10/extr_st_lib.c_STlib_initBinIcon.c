
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; int * p; int * on; int * val; scalar_t__ oldval; } ;
typedef TYPE_1__ st_binicon_t ;
typedef int patch_t ;
typedef int boolean ;



void
STlib_initBinIcon
( st_binicon_t* b,
  int x,
  int y,
  patch_t* i,
  boolean* val,
  boolean* on )
{
    b->x = x;
    b->y = y;
    b->oldval = 0;
    b->val = val;
    b->on = on;
    b->p = i;
}
