
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_viewport {int dummy; } ;
typedef int VPADTouchData ;
typedef int VPADStatus ;


 int apply_clamping (int *,struct video_viewport*,int*) ;
 int get_calibrated_point (int *,struct video_viewport*,int *) ;

__attribute__((used)) static void get_touch_coordinates(VPADTouchData *point, VPADStatus *vpad,
      struct video_viewport *viewport, bool *clamped)
{
   get_calibrated_point(point, viewport, vpad);
   apply_clamping(point, viewport, clamped);
}
