
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int height; } ;
typedef TYPE_1__ patch_t ;
struct TYPE_7__ {int h; int laston; int * l; scalar_t__ cl; int * on; } ;
typedef TYPE_2__ hu_stext_t ;
typedef int boolean ;


 int HUlib_initTextLine (int *,int,int,TYPE_1__**,int) ;
 int SHORT (int ) ;

void
HUlib_initSText
( hu_stext_t* s,
  int x,
  int y,
  int h,
  patch_t** font,
  int startchar,
  boolean* on )
{

    int i;

    s->h = h;
    s->on = on;
    s->laston = 1;
    s->cl = 0;
    for (i=0;i<h;i++)
 HUlib_initTextLine(&s->l[i],
      x, y - i*(SHORT(font[0]->height)+1),
      font, startchar);

}
