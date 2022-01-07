
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum audio_driver_enum { ____Placeholder_audio_driver_enum } audio_driver_enum ;
 int AUDIO_DEFAULT_DRIVER ;
const char *config_get_default_audio(void)
{
   enum audio_driver_enum default_driver = AUDIO_DEFAULT_DRIVER;

   switch (default_driver)
   {
      case 139:
         return "rsound";
      case 153:
         return "audioio";
      case 145:
         return "oss";
      case 155:
         return "alsa";
      case 154:
         return "alsathread";
      case 133:
         return "tinyalsa";
      case 140:
         return "roar";
      case 152:
         return "coreaudio";
      case 151:
         return "coreaudio3";
      case 156:
         return "openal";
      case 135:
         return "opensl";
      case 137:
         return "sdl";
      case 136:
         return "sdl2";
      case 149:
         return "dsound";
      case 132:
         return "wasapi";
      case 129:
         return "xaudio";
      case 141:
         return "pulse";
      case 148:
         return "ext";
      case 128:
         return "xenon360";
      case 143:
         return "ps3";
      case 131:
         return "gx";
      case 130:
         return "AX";
      case 142:





         return "psp";

      case 144:
         return "ps2";
      case 150:
         return "dsp";
      case 134:



         return "switch";

      case 138:
         return "rwebaudio";
      case 147:
         return "jack";
      case 146:
         break;
   }

   return "null";
}
