
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int psgBoostNoise; int psg_preamp; int dac_bits; } ;


 int SN76489_Config (int ,int ,int ,int) ;
 int SYSTEM_MD ;
 int SYSTEM_PBC ;
 int YM2413Init () ;
 int YM2413ResetChip ;
 int YM2413Update ;
 int YM2413Write ;
 int YM2612Config (int ) ;
 int YM2612Init () ;
 int YM2612ResetChip ;
 int YM2612Update ;
 int YM2612Write ;
 int YM_Reset ;
 int YM_Update ;
 int YM_Write ;
 TYPE_1__ config ;
 int fm_cycles_ratio ;
 int system_hw ;

void sound_init( void )
{

  if ((system_hw & SYSTEM_PBC) == SYSTEM_MD)
  {

    YM2612Init();
    YM2612Config(config.dac_bits);
    YM_Reset = YM2612ResetChip;
    YM_Update = YM2612Update;
    YM_Write = YM2612Write;


    fm_cycles_ratio = 144 * 7;
  }
  else
  {

    YM2413Init();
    YM_Reset = YM2413ResetChip;
    YM_Update = YM2413Update;
    YM_Write = YM2413Write;


    fm_cycles_ratio = 72 * 15;
  }


  SN76489_Config(0, config.psg_preamp, config.psgBoostNoise, 0xff);
}
