
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int UpdateVideoFullscreen () ;
 int VIDEOMODE_windowed ;
 unsigned int current_resolution ;
 int force_windowed ;

int VIDEOMODE_SetFullscreenResolution(unsigned int res_id)
{
 current_resolution = res_id;
 if (!VIDEOMODE_windowed && !force_windowed)
  return UpdateVideoFullscreen();
 return TRUE;
}
