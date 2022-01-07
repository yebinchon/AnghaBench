
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ point ;



point addpoint(point p1, point p2) {
 p1.x += p2.x;
 p1.y += p2.y;
 return p1;
}
