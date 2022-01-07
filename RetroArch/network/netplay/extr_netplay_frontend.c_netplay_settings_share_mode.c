
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int netplay_share_digital; int netplay_share_analog; } ;
struct TYPE_5__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;


 int NETPLAY_SHARE_ANALOG_AVERAGE ;
 int NETPLAY_SHARE_ANALOG_MAX ;
 int NETPLAY_SHARE_DIGITAL_OR ;
 int NETPLAY_SHARE_DIGITAL_VOTE ;
 int NETPLAY_SHARE_DIGITAL_XOR ;
 int NETPLAY_SHARE_NO_PREFERENCE ;





 TYPE_2__* config_get_ptr () ;

uint8_t netplay_settings_share_mode(void)
{
   settings_t *settings = config_get_ptr();
   uint8_t share_mode = 0;

   if (settings->uints.netplay_share_digital
         || settings->uints.netplay_share_analog)
   {
      switch (settings->uints.netplay_share_digital)
      {
         case 130:
            share_mode |= NETPLAY_SHARE_DIGITAL_OR;
            break;
         case 128:
            share_mode |= NETPLAY_SHARE_DIGITAL_XOR;
            break;
         case 129:
            share_mode |= NETPLAY_SHARE_DIGITAL_VOTE;
            break;
         default:
            share_mode |= NETPLAY_SHARE_NO_PREFERENCE;
      }
      switch (settings->uints.netplay_share_analog)
      {
         case 131:
            share_mode |= NETPLAY_SHARE_ANALOG_MAX;
            break;
         case 132:
            share_mode |= NETPLAY_SHARE_ANALOG_AVERAGE;
            break;
         default:
            share_mode |= NETPLAY_SHARE_NO_PREFERENCE;
      }
   }

   return share_mode;
}
