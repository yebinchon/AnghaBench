
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int height; int width; } ;
typedef TYPE_1__ VIDEOMODE_resolution_t ;
typedef int VIDEOMODE_MODE_t ;


 int ComputeVideoArea (TYPE_1__*,TYPE_1__*,int ,unsigned int,unsigned int,double*,double*,int) ;
 int CropVideoArea (TYPE_1__*,unsigned int*,unsigned int*,double,double) ;
 int CurrentDisplayMode () ;
 int FALSE ;
 int GetOutArea (unsigned int*,unsigned int*,int ) ;
 TYPE_1__* PLATFORM_DesktopResolution () ;
 scalar_t__ PLATFORM_SupportsVideomode (int ,int,int) ;
 int PLATFORM_WindowMaximised () ;
 int RotateResolution (TYPE_1__*) ;
 int SetVideoMode (TYPE_1__*,int ,unsigned int,unsigned int,int,int) ;
 int TRUE ;
 int UpdateCustomStretch () ;
 int VIDEOMODE_dest_height ;
 int VIDEOMODE_dest_width ;
 scalar_t__ VIDEOMODE_rotate90 ;
 TYPE_1__ window_resolution ;

__attribute__((used)) static int UpdateVideoWindowed(int window_resized)
{
 VIDEOMODE_MODE_t display_mode = CurrentDisplayMode();




 int rotate = FALSE;

 unsigned int out_w, out_h;
 double mult_w, mult_h;
 VIDEOMODE_resolution_t desk_res = *PLATFORM_DesktopResolution();
 VIDEOMODE_resolution_t res = window_resolution;
 VIDEOMODE_resolution_t *max_res;
 int maximised = PLATFORM_WindowMaximised();

 if (rotate)
  RotateResolution(&res);

 GetOutArea(&out_w, &out_h, display_mode);
 UpdateCustomStretch();
 ComputeVideoArea(&res, &desk_res, display_mode, out_w, out_h, &mult_w, &mult_h, rotate);
 if (window_resized || maximised)

  max_res = &res;
 else

  max_res = &desk_res;
 CropVideoArea(max_res, &out_w, &out_h, mult_w, mult_h);
 if (!window_resized && !maximised) {
  res.width = VIDEOMODE_dest_width;
  res.height = VIDEOMODE_dest_height;
 }
 SetVideoMode(&res, display_mode, out_w, out_h, TRUE, rotate);
 return TRUE;
}
