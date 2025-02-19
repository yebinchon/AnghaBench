
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int stbtt__hheap ;
struct TYPE_5__ {float x1; float x0; float y1; float y0; scalar_t__ invert; } ;
typedef TYPE_1__ stbtt__edge ;
struct TYPE_6__ {float fdx; int fdy; float fx; float direction; float sy; float ey; scalar_t__ next; } ;
typedef TYPE_2__ stbtt__active_edge ;


 scalar_t__ stbtt__hheap_alloc (int *,int,void*) ;

__attribute__((used)) static stbtt__active_edge *stbtt__new_active(stbtt__hheap *hh, stbtt__edge *e, int off_x, float start_point, void *userdata)
{
   stbtt__active_edge *z = (stbtt__active_edge *) stbtt__hheap_alloc(hh, sizeof(*z), userdata);
   float dxdy = (e->x1 - e->x0) / (e->y1 - e->y0);
   if (!z) return z;
   z->fdx = dxdy;
   z->fdy = (1/dxdy);
   z->fx = e->x0 + dxdy * (start_point - e->y0);
   z->fx -= off_x;
   z->direction = e->invert ? 1.0f : -1.0f;
   z->sy = e->y0;
   z->ey = e->y1;
   z->next = 0;
   return z;
}
