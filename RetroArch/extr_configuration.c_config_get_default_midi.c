
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum midi_driver_enum { ____Placeholder_midi_driver_enum } midi_driver_enum ;



 int MIDI_DEFAULT_DRIVER ;



const char *config_get_default_midi(void)
{
   enum midi_driver_enum default_driver = MIDI_DEFAULT_DRIVER;

   switch (default_driver)
   {
      case 128:
         return "winmm";
      case 130:
         return "alsa";
      case 129:
         break;
   }

   return "null";
}
