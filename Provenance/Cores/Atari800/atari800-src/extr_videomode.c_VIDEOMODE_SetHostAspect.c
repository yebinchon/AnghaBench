
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AutodetectHostAspect (double*,double*) ;
 int FALSE ;
 int TRUE ;
 int VIDEOMODE_Update () ;
 double VIDEOMODE_host_aspect_ratio_h ;
 double VIDEOMODE_host_aspect_ratio_w ;

int VIDEOMODE_SetHostAspect(double w, double h)
{
 double old_w = VIDEOMODE_host_aspect_ratio_w;
 double old_h = VIDEOMODE_host_aspect_ratio_h;
 if (w < 0.0 || h < 0.0)
  return FALSE;
 if (w == 0.0 || h == 0.0)
  AutodetectHostAspect(&w, &h);
 VIDEOMODE_host_aspect_ratio_w = w;
 VIDEOMODE_host_aspect_ratio_h = h;
 if (!VIDEOMODE_Update()) {
  VIDEOMODE_host_aspect_ratio_w = old_w;
  VIDEOMODE_host_aspect_ratio_h = old_h;
  return FALSE;
 }
 return TRUE;
}
