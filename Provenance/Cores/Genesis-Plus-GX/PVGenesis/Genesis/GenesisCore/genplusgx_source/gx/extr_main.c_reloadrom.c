
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ status; } ;
struct TYPE_7__ {int hot_swap; int s_device; int s_default; } ;
struct TYPE_5__ {scalar_t__ boot; } ;
struct TYPE_6__ {TYPE_1__ cartridge; } ;


 scalar_t__ CD_OPEN ;
 int CheatLoad () ;
 int SAMPLERATE_48KHZ ;
 int SYSTEM_MCD ;
 int SYSTEM_MD ;
 int SYSTEM_PBC ;
 int audio_init (int ,int ) ;
 TYPE_4__ cdd ;
 TYPE_3__ config ;
 int get_framerate () ;
 scalar_t__ interlaced ;
 int md_cart_init () ;
 int md_cart_reset (int) ;
 TYPE_2__ scd ;
 int slot_autoload (int ,int ) ;
 int sms_cart_init () ;
 int sms_cart_reset () ;
 int system_hw ;
 int system_init () ;
 int system_reset () ;

void reloadrom(void)
{

  if ((config.hot_swap == 3) && ((system_hw != SYSTEM_MCD) || scd.cartridge.boot))
  {

    if ((system_hw & SYSTEM_PBC) == SYSTEM_MD)
    {

      md_cart_init();
      md_cart_reset(1);
    }
    else
    {

      sms_cart_init();
      sms_cart_reset();
    }
  }


  else if ((system_hw != SYSTEM_MCD) || (cdd.status != CD_OPEN))
  {

    interlaced = 0;
    audio_init(SAMPLERATE_48KHZ, get_framerate());


    system_init();
    system_reset();


    config.hot_swap |= 2;
  }


  slot_autoload(0,config.s_device);


  slot_autoload(config.s_default,config.s_device);


  CheatLoad();
}
