
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* v2; TYPE_1__* v1; } ;
typedef TYPE_3__ seg_t ;
typedef scalar_t__ fixed_t ;
struct TYPE_6__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_5__ {scalar_t__ x; scalar_t__ y; } ;


 scalar_t__ FRACBITS ;
 scalar_t__ FixedMul (scalar_t__,scalar_t__) ;

int
R_PointOnSegSide
( fixed_t x,
  fixed_t y,
  seg_t* line )
{
    fixed_t lx;
    fixed_t ly;
    fixed_t ldx;
    fixed_t ldy;
    fixed_t dx;
    fixed_t dy;
    fixed_t left;
    fixed_t right;

    lx = line->v1->x;
    ly = line->v1->y;

    ldx = line->v2->x - lx;
    ldy = line->v2->y - ly;

    if (!ldx)
    {
 if (x <= lx)
     return ldy > 0;

 return ldy < 0;
    }
    if (!ldy)
    {
 if (y <= ly)
     return ldx < 0;

 return ldx > 0;
    }

    dx = (x - lx);
    dy = (y - ly);


    if ( (ldy ^ ldx ^ dx ^ dy)&0x80000000 )
    {
 if ( (ldy ^ dx) & 0x80000000 )
 {

     return 1;
 }
 return 0;
    }

    left = FixedMul ( ldy>>FRACBITS , dx );
    right = FixedMul ( dy , ldx>>FRACBITS );

    if (right < left)
    {

 return 0;
    }

    return 1;
}
