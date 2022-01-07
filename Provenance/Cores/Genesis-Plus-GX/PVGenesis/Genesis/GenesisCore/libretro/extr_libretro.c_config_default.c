
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int psg_preamp; int fm_preamp; int hq_fm; int psgBoostNoise; int lp_range; int low_freq; int high_freq; double lg; double mg; double hg; int dac_bits; int ym2413; int addr_error; int ntsc; scalar_t__ render; scalar_t__ gg_extra; scalar_t__ overscan; scalar_t__ hot_swap; scalar_t__ lock_on; scalar_t__ bios; scalar_t__ force_dtack; scalar_t__ master_clock; scalar_t__ vdp_mode; scalar_t__ region_detect; scalar_t__ system; scalar_t__ mono; scalar_t__ filter; int version; } ;


 int CONFIG_VERSION ;
 TYPE_1__ config ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static void config_default(void)
{

   strncpy(config.version,CONFIG_VERSION,16);


   config.psg_preamp = 150;
   config.fm_preamp = 100;
   config.hq_fm = 1;
   config.psgBoostNoise = 1;
   config.filter = 0;
   config.lp_range = 0x9999;
   config.low_freq = 880;
   config.high_freq = 5000;
   config.lg = 1.0;
   config.mg = 1.0;
   config.hg = 1.0;
   config.dac_bits = 14;
   config.ym2413 = 2;
   config.mono = 0;


   config.system = 0;
   config.region_detect = 0;
   config.vdp_mode = 0;
   config.master_clock = 0;
   config.force_dtack = 0;
   config.addr_error = 1;
   config.bios = 0;
   config.lock_on = 0;
   config.hot_swap = 0;


   config.overscan = 0;
   config.gg_extra = 0;




   config.render = 0;
}
