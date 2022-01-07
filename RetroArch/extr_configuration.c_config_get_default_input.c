
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum input_driver_enum { ____Placeholder_input_driver_enum } input_driver_enum ;





 int INPUT_DEFAULT_DRIVER ;
const char *config_get_default_input(void)
{
   enum input_driver_enum default_driver = INPUT_DEFAULT_DRIVER;

   switch (default_driver)
   {
      case 152:
         return "android";
      case 143:
         return "ps4";
      case 144:
         return "ps3";
      case 142:



         return "psp";

      case 145:
         return "ps2";
      case 150:
         return "ctr";
      case 137:
         return "switch";
      case 139:
         return "sdl";
      case 138:
         return "sdl2";
      case 149:
         return "dinput";
      case 131:
         return "raw";
      case 130:
         return "x";
      case 134:
         return "wayland";
      case 129:
         return "xenon360";
      case 128:
         return "xinput";
      case 135:
         return "uwp";
      case 133:
         return "gx";
      case 132:
         return "wiiu";
      case 147:
         return "linuxraw";
      case 136:
         return "udev";
      case 151:
         return "cocoa";
      case 141:
          return "qnx_input";
      case 140:
          return "rwebinput";
      case 148:
         return "dos";
      case 146:
          break;
   }

   return "null";
}
