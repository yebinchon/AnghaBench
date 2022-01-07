
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* config_devices; } ;
typedef TYPE_1__ netplay_t ;


 int MAX_INPUT_DEVICES ;




 int RETRO_DEVICE_MASK ;


uint32_t netplay_expected_input_size(netplay_t *netplay, uint32_t devices)
{
   uint32_t ret = 0, device;

   for (device = 0; device < MAX_INPUT_DEVICES; device++)
   {
      if (!(devices & (1<<device)))
         continue;

      switch (netplay->config_devices[device]&RETRO_DEVICE_MASK)
      {


         case 131:
            ret += 1;
            break;
         case 128:
            ret += 2;
            break;
         case 130:
            ret += 5;
            break;
         case 129:
            ret += 2;
            break;
         case 132:
            ret += 3;
            break;
         default:
            break;
      }
   }

   return ret;
}
