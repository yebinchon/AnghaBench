
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int patch_t ;
struct TYPE_3__ {int laston; int l; int * on; scalar_t__ lm; } ;
typedef TYPE_1__ hu_itext_t ;
typedef int boolean ;


 int HUlib_initTextLine (int *,int,int,int **,int) ;

void
HUlib_initIText
( hu_itext_t* it,
  int x,
  int y,
  patch_t** font,
  int startchar,
  boolean* on )
{
    it->lm = 0;
    it->on = on;
    it->laston = 1;
    HUlib_initTextLine(&it->l, x, y, font, startchar);
}
