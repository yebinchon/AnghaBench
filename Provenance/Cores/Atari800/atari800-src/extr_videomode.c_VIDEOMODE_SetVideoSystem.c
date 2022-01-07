
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UpdateTvSystemSettings () ;
 int VIDEOMODE_Update () ;

void VIDEOMODE_SetVideoSystem(int mode)
{
 UpdateTvSystemSettings();
 VIDEOMODE_Update();
}
