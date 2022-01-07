
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* traverser_t ) (TYPE_1__*) ;
struct TYPE_6__ {scalar_t__ frac; } ;
typedef TYPE_1__ intercept_t ;
typedef scalar_t__ fixed_t ;
typedef int boolean ;


 void* MAXINT ;
 TYPE_1__* intercept_p ;
 TYPE_1__* intercepts ;

boolean
P_TraverseIntercepts
( traverser_t func,
  fixed_t maxfrac )
{
    int count;
    fixed_t dist;
    intercept_t* scan;
    intercept_t* in;

    count = intercept_p - intercepts;

    in = 0;

    while (count--)
    {
 dist = MAXINT;
 for (scan = intercepts ; scan<intercept_p ; scan++)
 {
     if (scan->frac < dist)
     {
  dist = scan->frac;
  in = scan;
     }
 }

 if (dist > maxfrac)
     return 1;
        if ( !func (in) )
     return 0;

 in->frac = MAXINT;
    }

    return 1;
}
