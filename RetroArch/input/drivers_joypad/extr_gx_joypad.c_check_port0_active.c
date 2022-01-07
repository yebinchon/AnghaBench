
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int* input_joypad_map; } ;
struct TYPE_6__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_7__ {int ident; } ;


 int WPAD_EXP_GAMECUBE ;
 int WPAD_EXP_NONE ;
 TYPE_2__* config_get_ptr () ;
 TYPE_3__ gx_joypad ;
 int gx_joypad_name (int ) ;
 int input_autoconfigure_connect (int ,int *,int ,int ,int ,int ) ;
 int input_config_set_device_name (int ,int ) ;
 int * pad_type ;

__attribute__((used)) static void check_port0_active(uint8_t pad_count)
{
   settings_t *settings = config_get_ptr();
   int idx = settings->uints.input_joypad_map[0];

   if(pad_count < 2 && idx != 0)
   {



      pad_type[0] = WPAD_EXP_GAMECUBE;

      settings->uints.input_joypad_map[0] = 0;

      input_autoconfigure_connect(
            gx_joypad_name(0),
            ((void*)0),
            gx_joypad.ident,
            0,
            0,
            0
            );

      input_config_set_device_name(0, gx_joypad_name(0));
   }
}
