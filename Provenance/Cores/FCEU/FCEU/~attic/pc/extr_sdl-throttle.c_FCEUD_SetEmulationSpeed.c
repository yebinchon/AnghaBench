
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DecreaseEmulationSpeed () ;





 int FCEU_DispMessage (char*,int) ;
 int IncreaseEmulationSpeed () ;
 int RefreshThrottleFPS () ;
 int fps_scale ;
 int* fps_scale_table ;
 int fps_table_size ;

void FCEUD_SetEmulationSpeed(int cmd)
{
 switch(cmd)
 {
 case 128: fps_scale=fps_scale_table[0]; break;
 case 129: DecreaseEmulationSpeed(); break;
 case 130: fps_scale=256; break;
 case 132: IncreaseEmulationSpeed(); break;
 case 131: fps_scale=fps_scale_table[fps_table_size-1]; break;
 default:
  return;
 }

 RefreshThrottleFPS();

 FCEU_DispMessage("emulation speed %d%%",(fps_scale*100)>>8);
}
