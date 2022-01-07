
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dx; scalar_t__ x; scalar_t__ dy; scalar_t__ y; } ;
typedef TYPE_1__ node_t ;
typedef scalar_t__ fixed_t ;


 scalar_t__ FRACBITS ;
 scalar_t__ FixedMul (scalar_t__,scalar_t__) ;

int
R_PointOnSide
( fixed_t x,
  fixed_t y,
  node_t* node )
{
    fixed_t dx;
    fixed_t dy;
    fixed_t left;
    fixed_t right;

    if (!node->dx)
    {
 if (x <= node->x)
     return node->dy > 0;

 return node->dy < 0;
    }
    if (!node->dy)
    {
 if (y <= node->y)
     return node->dx < 0;

 return node->dx > 0;
    }

    dx = (x - node->x);
    dy = (y - node->y);


    if ( (node->dy ^ node->dx ^ dx ^ dy)&0x80000000 )
    {
 if ( (node->dy ^ dx) & 0x80000000 )
 {

     return 1;
 }
 return 0;
    }

    left = FixedMul ( node->dy>>FRACBITS , dx );
    right = FixedMul ( dy , node->dx>>FRACBITS );

    if (right < left)
    {

 return 0;
    }

    return 1;
}
