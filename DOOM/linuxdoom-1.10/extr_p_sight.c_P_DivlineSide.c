
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ fixed_t ;
struct TYPE_3__ {scalar_t__ dx; scalar_t__ x; scalar_t__ dy; scalar_t__ y; } ;
typedef TYPE_1__ divline_t ;


 scalar_t__ FRACBITS ;

int
P_DivlineSide
( fixed_t x,
  fixed_t y,
  divline_t* node )
{
    fixed_t dx;
    fixed_t dy;
    fixed_t left;
    fixed_t right;

    if (!node->dx)
    {
 if (x==node->x)
     return 2;

 if (x <= node->x)
     return node->dy > 0;

 return node->dy < 0;
    }

    if (!node->dy)
    {
 if (x==node->y)
     return 2;

 if (y <= node->y)
     return node->dx < 0;

 return node->dx > 0;
    }

    dx = (x - node->x);
    dy = (y - node->y);

    left = (node->dy>>FRACBITS) * (dx>>FRACBITS);
    right = (dy>>FRACBITS) * (node->dx>>FRACBITS);

    if (right < left)
 return 0;

    if (left == right)
 return 2;
    return 1;
}
