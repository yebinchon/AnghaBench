
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gp2x_soc_t ;
typedef int FILE ;


 int GP2X_DEV_CAANOO ;
 int GP2X_DEV_GP2X ;
 int GP2X_DEV_WIZ ;


 int default_cpu_clock ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int gp2x_dev_id ;
 int mmsp2_init () ;
 int pollux_init () ;
 int printf (char*) ;
 int soc_detect () ;

int plat_target_init(void)
{
 gp2x_soc_t soc;
 FILE *f;

 soc = soc_detect();
 switch (soc)
 {
 case 129:
  mmsp2_init();
  default_cpu_clock = 200;
  gp2x_dev_id = GP2X_DEV_GP2X;
  break;
 case 128:
  pollux_init();
  default_cpu_clock = 533;
  f = fopen("/dev/accel", "rb");
  if (f) {
   printf("detected Caanoo\n");
   gp2x_dev_id = GP2X_DEV_CAANOO;
   fclose(f);
  }
  else {
   printf("detected Wiz\n");
   gp2x_dev_id = GP2X_DEV_WIZ;
  }
  break;
 default:
  printf("could not recognize SoC.\n");
  break;
 }

 return 0;
}
