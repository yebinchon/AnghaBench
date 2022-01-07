
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* input; } ;
struct TYPE_5__ {void** system; } ;
struct TYPE_4__ {int padtype; } ;


 int DEVICE_PAD6B ;
 unsigned int MAX_INPUTS ;



 void* SYSTEM_MD_GAMEPAD ;
 void* SYSTEM_MS_GAMEPAD ;

 TYPE_3__ config ;
 TYPE_2__ input ;
 int system_hw ;

__attribute__((used)) static void configure_controls(void)
{
   unsigned i;

   switch (system_hw)
   {
      case 129:
      case 130:
         for(i = 0; i < MAX_INPUTS; i++)
         {
            config.input[i].padtype = DEVICE_PAD6B;
         }
         input.system[0] = SYSTEM_MD_GAMEPAD;
         input.system[1] = SYSTEM_MD_GAMEPAD;
         break;
      case 131:
      case 128:
         input.system[0] = SYSTEM_MS_GAMEPAD;
         input.system[1] = SYSTEM_MS_GAMEPAD;
         break;
      default:
         break;
   }
}
