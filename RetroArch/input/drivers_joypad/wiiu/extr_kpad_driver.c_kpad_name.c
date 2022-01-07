
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;


 char const* PAD_NAME_CLASSIC ;
 char const* PAD_NAME_NUNCHUK ;
 char const* PAD_NAME_WIIMOTE ;
 char const* PAD_NAME_WIIU_PRO ;
 int RARCH_LOG (char*,int) ;





 int to_wiimote_channel (unsigned int) ;
 TYPE_1__* wiimotes ;

__attribute__((used)) static const char *kpad_name(unsigned pad)
{
   int channel = to_wiimote_channel(pad);
   if (channel < 0)
      return "unknown";

   switch(wiimotes[channel].type)
   {
      case 129:
         return PAD_NAME_WIIU_PRO;
      case 132:
         return PAD_NAME_CLASSIC;
      case 130:
         return PAD_NAME_NUNCHUK;
      case 128:
         return PAD_NAME_WIIMOTE;
      case 131:
      default:
         RARCH_LOG("[kpad]: Unknown pad type %d\n", wiimotes[pad].type);
         break;
   }

   return "N/A";
}
