
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct video_viewport {int full_height; int full_width; } ;
struct TYPE_6__ {void* y; void* x; int member_0; } ;
typedef TYPE_1__ VPADTouchData ;
struct TYPE_7__ {int tpNormal; } ;
typedef TYPE_2__ VPADStatus ;


 int PAD_GAMEPAD ;
 int VPADGetTPCalibratedPoint (int ,TYPE_1__*,int *) ;
 void* scale_touchpad (int,int,int ,int ,void*) ;

__attribute__((used)) static void get_calibrated_point(VPADTouchData *point, struct video_viewport *viewport, VPADStatus *vpad)
{
   VPADTouchData calibrated720p = {0};

   VPADGetTPCalibratedPoint(PAD_GAMEPAD, &calibrated720p, &(vpad->tpNormal));
   point->x = scale_touchpad(12, 1268, 0, viewport->full_width, calibrated720p.x);
   point->y = scale_touchpad(12, 708, 0, viewport->full_height, calibrated720p.y);
}
