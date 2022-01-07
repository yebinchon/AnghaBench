
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIDEOMODE_Update () ;
 int VIDEOMODE_windowed ;
 int force_windowed ;

void VIDEOMODE_ForceWindowed(int value)
{
 int prev_windowed = VIDEOMODE_windowed || force_windowed;
 force_windowed = value;
 if (prev_windowed != VIDEOMODE_windowed || force_windowed)
  VIDEOMODE_Update();
}
