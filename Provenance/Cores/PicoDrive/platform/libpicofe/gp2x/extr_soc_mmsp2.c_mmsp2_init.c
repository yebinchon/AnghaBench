
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int step_volume; int gamma_set; int lcdrate_set; int cpu_clock_set; int cpu_clock_get; } ;
typedef int FILE ;


 int* MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDONLY ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,int *,int *,int *,int *,int *,int *,int *) ;
 int get_reg_setting (int ) ;
 int gp2x_get_ticks_ms ;
 int gp2x_get_ticks_us ;
 int lcd_rate_defaults ;
 int memdev ;
 unsigned int volatile* memregl ;
 int* memregs ;
 int* memtimex_old ;
 int mixerdev ;
 int* mmap (int ,int,int,int ,int,int) ;
 int mmsp2_clock_get ;
 int mmsp2_clock_set ;
 int mmsp2_gamma_set ;
 int mmsp2_lcdrate_set ;
 void* open (char*,int ) ;
 int perror (char*) ;
 int plat_get_ticks_ms_good ;
 int plat_get_ticks_us_good ;
 TYPE_1__ plat_target ;
 int printf (char*) ;
 int proc_set (char*,char*) ;
 int reg0910 ;
 int set_ram_timings_ () ;
 scalar_t__ sndout_oss_can_restart ;
 int step_volume ;
 int * touchcal ;
 scalar_t__ touchdev ;

void mmsp2_init(void)
{
   memdev = open("/dev/mem", O_RDWR);
 if (memdev == -1)
 {
  perror("open(\"/dev/mem\")");
  exit(1);
 }

 memregs = mmap(0, 0x10000, PROT_READ|PROT_WRITE, MAP_SHARED, memdev, 0xc0000000);
 if (memregs == MAP_FAILED)
 {
  perror("mmap(memregs)");
  exit(1);
 }
 memregl = (volatile unsigned int *) memregs;

 memregs[0x2880>>1] &= ~0x383;


 get_reg_setting(lcd_rate_defaults);


 reg0910 = memregs[0x0910>>1];
 memtimex_old[0] = memregs[0x3802>>1];
 memtimex_old[1] = memregs[0x3804>>1];


 touchdev = open("/dev/touchscreen/wm97xx", O_RDONLY);
 if (touchdev >= 0) {
  FILE *pcf = fopen("/etc/pointercal", "r");
  if (pcf) {
   fscanf(pcf, "%d %d %d %d %d %d %d", &touchcal[0], &touchcal[1],
    &touchcal[2], &touchcal[3], &touchcal[4], &touchcal[5], &touchcal[6]);
   fclose(pcf);
  }
  printf("found touchscreen/wm97xx\n");
 }


 proc_set("/proc/sys/vm/max-readahead", "0\n");
 proc_set("/proc/sys/vm/min-readahead", "0\n");

 mixerdev = open("/dev/mixer", O_RDWR);
 if (mixerdev == -1)
  perror("open(/dev/mixer)");

 set_ram_timings_();

 plat_target.cpu_clock_get = mmsp2_clock_get;
 plat_target.cpu_clock_set = mmsp2_clock_set;
 plat_target.lcdrate_set = mmsp2_lcdrate_set;
 plat_target.gamma_set = mmsp2_gamma_set;
 plat_target.step_volume = step_volume;

 gp2x_get_ticks_ms = plat_get_ticks_ms_good;
 gp2x_get_ticks_us = plat_get_ticks_us_good;

 sndout_oss_can_restart = 0;
}
