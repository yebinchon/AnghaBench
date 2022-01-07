
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gp2x_dev_id ;
 int sharedmem940_finish () ;
 int vid_mmsp2_finish () ;
 int vid_pollux_finish () ;
 int warm_finish () ;

void plat_finish(void)
{
 warm_finish();

 switch (gp2x_dev_id) {
 case 129:
  sharedmem940_finish();
  vid_mmsp2_finish();
  break;
 case 128:
 case 130:
  vid_pollux_finish();
  break;
 }
}
