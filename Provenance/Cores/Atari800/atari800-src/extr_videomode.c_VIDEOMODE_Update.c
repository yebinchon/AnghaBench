
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int UpdateVideoFullscreen () ;
 int UpdateVideoWindowed (int ) ;
 scalar_t__ VIDEOMODE_windowed ;
 scalar_t__ force_windowed ;

int VIDEOMODE_Update(void)
{
 if (VIDEOMODE_windowed || force_windowed)
  return UpdateVideoWindowed(FALSE);
 else
  return UpdateVideoFullscreen();
}
