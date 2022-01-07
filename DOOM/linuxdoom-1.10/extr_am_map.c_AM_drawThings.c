
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* snext; int y; int x; int angle; } ;
typedef TYPE_1__ mobj_t ;
struct TYPE_4__ {TYPE_1__* thinglist; } ;


 int AM_drawLineCharacter (int ,int ,int,int ,scalar_t__,int ,int ) ;
 int FRACBITS ;
 int NUMTHINTRIANGLEGUYLINES ;
 scalar_t__ lightlev ;
 int numsectors ;
 TYPE_2__* sectors ;
 int thintriangle_guy ;

void
AM_drawThings
( int colors,
  int colorrange)
{
    int i;
    mobj_t* t;

    for (i=0;i<numsectors;i++)
    {
 t = sectors[i].thinglist;
 while (t)
 {
     AM_drawLineCharacter
  (thintriangle_guy, NUMTHINTRIANGLEGUYLINES,
   16<<FRACBITS, t->angle, colors+lightlev, t->x, t->y);
     t = t->snext;
 }
    }
}
