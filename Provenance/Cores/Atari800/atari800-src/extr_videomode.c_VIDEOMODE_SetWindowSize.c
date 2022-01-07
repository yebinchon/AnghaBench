
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int width; unsigned int height; } ;


 int TRUE ;
 int UpdateVideoWindowed (int) ;
 scalar_t__ VIDEOMODE_windowed ;
 scalar_t__ force_windowed ;
 TYPE_1__ window_resolution ;

int VIDEOMODE_SetWindowSize(unsigned int width, unsigned int height)
{
 window_resolution.width = width;
 window_resolution.height = height;
 if (VIDEOMODE_windowed || force_windowed)
  return UpdateVideoWindowed(TRUE);
 return TRUE;
}
