
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float sy; float ey; float direction; } ;
typedef TYPE_1__ stbtt__active_edge ;


 int assert (int) ;

__attribute__((used)) static void stbtt__handle_clipped_edge(float *scanline, int x, stbtt__active_edge *e,
      float x0, float y0, float x1, float y1)
{
   if (y0 == y1) return;
   assert(y0 < y1);
   assert(e->sy <= e->ey);
   if (y0 > e->ey) return;
   if (y1 < e->sy) return;
   if (y0 < e->sy) {
      x0 += (x1-x0) * (e->sy - y0) / (y1-y0);
      y0 = e->sy;
   }
   if (y1 > e->ey) {
      x1 += (x1-x0) * (e->ey - y1) / (y1-y0);
      y1 = e->ey;
   }
   if (x0 <= x && x1 <= x)
      scanline[x] += e->direction * (y1-y0);
   else if (x0 >= x+1 && x1 >= x+1)
      ;
   else {



      scanline[x] += e->direction * (y1-y0) * (1-((x0-x)+(x1-x))/2);
   }
}
