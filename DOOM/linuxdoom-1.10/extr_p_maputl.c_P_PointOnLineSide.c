
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dx; scalar_t__ dy; TYPE_1__* v1; } ;
typedef TYPE_2__ line_t ;
typedef scalar_t__ fixed_t ;
struct TYPE_4__ {scalar_t__ x; scalar_t__ y; } ;


 scalar_t__ FRACBITS ;
 scalar_t__ FixedMul (scalar_t__,scalar_t__) ;

int
P_PointOnLineSide
( fixed_t x,
  fixed_t y,
  line_t* line )
{
    fixed_t dx;
    fixed_t dy;
    fixed_t left;
    fixed_t right;

    if (!line->dx)
    {
 if (x <= line->v1->x)
     return line->dy > 0;

 return line->dy < 0;
    }
    if (!line->dy)
    {
 if (y <= line->v1->y)
     return line->dx < 0;

 return line->dx > 0;
    }

    dx = (x - line->v1->x);
    dy = (y - line->v1->y);

    left = FixedMul ( line->dy>>FRACBITS , dx );
    right = FixedMul ( dy , line->dx>>FRACBITS );

    if (right < left)
 return 0;
    return 1;
}
