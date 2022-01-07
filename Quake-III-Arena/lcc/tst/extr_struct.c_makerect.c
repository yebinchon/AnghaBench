
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* pt2; void* pt1; } ;
typedef TYPE_1__ rect ;
typedef void* point ;


 TYPE_1__ canonrect (TYPE_1__) ;

rect makerect(point p1, point p2) {
 rect r;

 r.pt1 = p1;
 r.pt2 = p2;
 return canonrect(r);
}
