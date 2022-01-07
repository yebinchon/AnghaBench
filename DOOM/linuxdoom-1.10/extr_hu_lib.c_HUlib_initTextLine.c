
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int patch_t ;
struct TYPE_4__ {int x; int y; int sc; int ** f; } ;
typedef TYPE_1__ hu_textline_t ;


 int HUlib_clearTextLine (TYPE_1__*) ;

void
HUlib_initTextLine
( hu_textline_t* t,
  int x,
  int y,
  patch_t** f,
  int sc )
{
    t->x = x;
    t->y = y;
    t->f = f;
    t->sc = sc;
    HUlib_clearTextLine(t);
}
