
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int dy; int dx; scalar_t__ dh; scalar_t__ dw; } ;
typedef TYPE_1__ dbox ;
struct TYPE_10__ {scalar_t__ w; scalar_t__ h; } ;
typedef TYPE_2__ box ;


 TYPE_1__ dintersect (TYPE_2__,TYPE_2__) ;

dbox dunion(box a, box b)
{
    dbox du;

    dbox di = dintersect(a, b);
    du.dw = a.h - di.dw;
    du.dh = a.w - di.dh;
    du.dx = -di.dx;
    du.dy = -di.dy;

    return du;
}
