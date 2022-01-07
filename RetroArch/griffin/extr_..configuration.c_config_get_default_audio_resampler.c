
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum audio_resampler_driver_enum { ____Placeholder_audio_resampler_driver_enum } audio_resampler_driver_enum ;


 int AUDIO_DEFAULT_RESAMPLER_DRIVER ;





const char *config_get_default_audio_resampler(void)
{
   enum audio_resampler_driver_enum default_driver = AUDIO_DEFAULT_RESAMPLER_DRIVER;

   switch (default_driver)
   {
      case 131:
         return "cc";
      case 128:
         return "sinc";
      case 130:
         return "nearest";
      case 129:
         break;
   }

   return "null";
}
