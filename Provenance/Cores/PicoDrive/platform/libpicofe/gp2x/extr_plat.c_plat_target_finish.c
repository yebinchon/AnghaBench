
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gp2x_soc_t ;




 int mmsp2_finish () ;
 int pollux_finish () ;
 int soc_detect () ;

void plat_target_finish(void)
{
 gp2x_soc_t soc;

 soc = soc_detect();
 switch (soc)
 {
 case 129:
  mmsp2_finish();
  break;
 case 128:
  pollux_finish();
  break;
 default:
  break;
 }
}
