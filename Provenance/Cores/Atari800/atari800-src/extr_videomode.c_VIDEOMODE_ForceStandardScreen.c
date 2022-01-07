
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VIDEOMODE_MODE_t ;


 scalar_t__ CurrentDisplayMode () ;
 int VIDEOMODE_Update () ;
 int force_standard_screen ;

void VIDEOMODE_ForceStandardScreen(int value)
{
 VIDEOMODE_MODE_t prev_mode = CurrentDisplayMode();
 force_standard_screen = value;
 if (prev_mode != CurrentDisplayMode())
  VIDEOMODE_Update();
}
