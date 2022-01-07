
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum joypad_driver_enum { ____Placeholder_joypad_driver_enum } joypad_driver_enum ;




 int JOYPAD_DEFAULT_DRIVER ;
const char *config_get_default_joypad(void)
{
   enum joypad_driver_enum default_driver = JOYPAD_DEFAULT_DRIVER;

   switch (default_driver)
   {
      case 137:
         return "ps4";
      case 138:
         return "ps3";
      case 128:
         return "xinput";
      case 144:
         return "gx";
      case 130:
         return "wiiu";
      case 129:
         return "xdk";
      case 136:



         return "psp";

      case 139:
         return "ps2";
      case 147:
         return "ctr";
      case 132:
         return "switch";
      case 146:
         return "dinput";
      case 131:
         return "udev";
      case 142:
         return "linuxraw";
      case 148:
         return "android";
      case 133:



         return "sdl";

      case 143:
         return "hid";
      case 135:
         return "qnx";
      case 134:
         return "rwebpad";
      case 145:
         return "dos";
      case 141:
         return "mfi";
      case 140:
         break;
   }

   return "null";
}
