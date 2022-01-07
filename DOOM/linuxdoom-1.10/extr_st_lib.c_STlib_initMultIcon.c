
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; int oldinum; int* inum; int ** p; int * on; } ;
typedef TYPE_1__ st_multicon_t ;
typedef int patch_t ;
typedef int boolean ;



void
STlib_initMultIcon
( st_multicon_t* i,
  int x,
  int y,
  patch_t** il,
  int* inum,
  boolean* on )
{
    i->x = x;
    i->y = y;
    i->oldinum = -1;
    i->inum = inum;
    i->on = on;
    i->p = il;
}
