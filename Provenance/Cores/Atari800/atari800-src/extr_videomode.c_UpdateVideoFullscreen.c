
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VIDEOMODE_resolution_t ;
typedef int VIDEOMODE_MODE_t ;


 int ComputeVideoArea (int *,int *,int ,unsigned int,unsigned int,double*,double*,int) ;
 int CropVideoArea (int *,unsigned int*,unsigned int*,double,double) ;
 int CurrentDisplayMode () ;
 int FALSE ;
 int GetOutArea (unsigned int*,unsigned int*,int ) ;
 scalar_t__ PLATFORM_SupportsVideomode (int ,int,int) ;
 int * ResolutionForMode (int ,int) ;
 int RotateResolution (int *) ;
 int SetVideoMode (int *,int ,unsigned int,unsigned int,int,int) ;
 int TRUE ;
 int UpdateCustomStretch () ;
 scalar_t__ VIDEOMODE_rotate90 ;

__attribute__((used)) static int UpdateVideoFullscreen(void)
{
 VIDEOMODE_MODE_t display_mode = CurrentDisplayMode();




 int rotate = FALSE;

 unsigned int out_w, out_h;
 double mult_w, mult_h;
 VIDEOMODE_resolution_t *res_for_mode = ResolutionForMode(display_mode, rotate);
 VIDEOMODE_resolution_t res;
 if (res_for_mode == ((void*)0))
  return FALSE;

 res = *res_for_mode;
 if (rotate)
  RotateResolution(&res);

 GetOutArea(&out_w, &out_h, display_mode);
 UpdateCustomStretch();
 ComputeVideoArea(&res, res_for_mode, display_mode, out_w, out_h, &mult_w, &mult_h, rotate);
 CropVideoArea(&res, &out_w, &out_h, mult_w, mult_h);
 SetVideoMode(&res, display_mode, out_w, out_h, FALSE, rotate);
 return TRUE;
}
