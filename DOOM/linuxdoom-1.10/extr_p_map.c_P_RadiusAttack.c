
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int y; int x; } ;
typedef TYPE_1__ mobj_t ;
typedef int fixed_t ;


 int FRACBITS ;
 int MAPBLOCKSHIFT ;
 int MAXRADIUS ;
 int PIT_RadiusAttack ;
 int P_BlockThingsIterator (int,int,int ) ;
 int bmaporgx ;
 int bmaporgy ;
 int bombdamage ;
 TYPE_1__* bombsource ;
 TYPE_1__* bombspot ;

void
P_RadiusAttack
( mobj_t* spot,
  mobj_t* source,
  int damage )
{
    int x;
    int y;

    int xl;
    int xh;
    int yl;
    int yh;

    fixed_t dist;

    dist = (damage+MAXRADIUS)<<FRACBITS;
    yh = (spot->y + dist - bmaporgy)>>MAPBLOCKSHIFT;
    yl = (spot->y - dist - bmaporgy)>>MAPBLOCKSHIFT;
    xh = (spot->x + dist - bmaporgx)>>MAPBLOCKSHIFT;
    xl = (spot->x - dist - bmaporgx)>>MAPBLOCKSHIFT;
    bombspot = spot;
    bombsource = source;
    bombdamage = damage;

    for (y=yl ; y<=yh ; y++)
 for (x=xl ; x<=xh ; x++)
     P_BlockThingsIterator (x, y, PIT_RadiusAttack );
}
