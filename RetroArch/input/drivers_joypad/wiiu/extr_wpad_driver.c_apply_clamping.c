
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct video_viewport {scalar_t__ x; scalar_t__ width; scalar_t__ y; scalar_t__ height; } ;
struct TYPE_3__ {scalar_t__ x; scalar_t__ y; } ;
typedef TYPE_1__ VPADTouchData ;



__attribute__((used)) static void apply_clamping(VPADTouchData *point, struct video_viewport *viewport, bool *clamped)
{

   if (point->x < viewport->x)
   {
      point->x = viewport->x;
      *clamped = 1;
   }
   else if (point->x > (viewport->x + viewport->width))
   {
      point->x = viewport->x + viewport->width;
      *clamped = 1;
   }


   if (point->y < viewport->y)
   {
      point->y = viewport->y;
      *clamped = 1;
   }
   else if (point->y > (viewport->y + viewport->height))
   {
      point->y = viewport->y + viewport->height;
      *clamped = 1;
   }
}
