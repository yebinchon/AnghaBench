
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int psg_preamp; int fm_preamp; int hq_fm; int psgBoostNoise; int low_freq; int high_freq; double lg; double mg; double hg; int lp_range; int dac_bits; int ym2413; int addr_error; int* gun_cursor; TYPE_1__* input; scalar_t__ invert_mouse; scalar_t__ render; scalar_t__ gg_extra; scalar_t__ overscan; scalar_t__ lock_on; scalar_t__ bios; scalar_t__ force_dtack; scalar_t__ master_clock; scalar_t__ vdp_mode; scalar_t__ region_detect; scalar_t__ system; scalar_t__ filter; } ;
struct TYPE_5__ {void** system; } ;
struct TYPE_4__ {int padtype; } ;


 int DEVICE_PAD3B ;
 int MAX_INPUTS ;
 void* SYSTEM_MD_GAMEPAD ;
 TYPE_3__ config ;
 TYPE_2__ input ;

void set_config_defaults(void)
{
  int i;


  config.psg_preamp = 150;
  config.fm_preamp = 100;
  config.hq_fm = 1;
  config.psgBoostNoise = 1;
  config.filter = 0;
  config.low_freq = 200;
  config.high_freq = 8000;
  config.lg = 1.0;
  config.mg = 1.0;
  config.hg = 1.0;
  config.lp_range = 60;
  config.dac_bits = 14;
  config.ym2413 = 2;


  config.system = 0;
  config.region_detect = 0;
  config.vdp_mode = 0;
  config.master_clock = 0;
  config.force_dtack = 0;
  config.addr_error = 1;
  config.bios = 0;
  config.lock_on = 0;


  config.overscan = 0;
  config.gg_extra = 0;
  config.render = 0;


  input.system[0] = SYSTEM_MD_GAMEPAD;
  input.system[1] = SYSTEM_MD_GAMEPAD;
  config.gun_cursor[0] = 1;
  config.gun_cursor[1] = 1;
  config.invert_mouse = 0;
  for (i=0;i<MAX_INPUTS;i++)
  {
    config.input[i].padtype = DEVICE_PAD3B;
  }
}
