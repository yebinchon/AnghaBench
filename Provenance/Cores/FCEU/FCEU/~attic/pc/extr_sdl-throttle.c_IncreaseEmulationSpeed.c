
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FCEU_DispMessage (char*,int) ;
 int RefreshThrottleFPS () ;
 int fps_scale ;
 int* fps_scale_table ;

void IncreaseEmulationSpeed(void)
{
 int i;
 for(i=1; fps_scale_table[i]<fps_scale; i++)
  ;
 fps_scale = fps_scale_table[i+1];

 RefreshThrottleFPS();

 FCEU_DispMessage("emulation speed %d%%",(fps_scale*100)>>8);
}
