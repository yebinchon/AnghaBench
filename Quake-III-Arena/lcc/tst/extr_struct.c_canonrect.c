
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* y; void* x; } ;
struct TYPE_7__ {void* y; void* x; } ;
struct TYPE_8__ {TYPE_1__ pt2; TYPE_2__ pt1; } ;
typedef TYPE_3__ rect ;


 void* max (void*,void*) ;
 void* min (void*,void*) ;

rect canonrect(rect r) {
 rect temp;

 temp.pt1.x = min(r.pt1.x, r.pt2.x);
 temp.pt1.y = min(r.pt1.y, r.pt2.y);
 temp.pt2.x = max(r.pt1.x, r.pt2.x);
 temp.pt2.y = max(r.pt1.y, r.pt2.y);
 return temp;
}
