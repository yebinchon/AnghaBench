
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum record_driver_enum { ____Placeholder_record_driver_enum } record_driver_enum ;


 int RECORD_DEFAULT_DRIVER ;



const char *config_get_default_record(void)
{
   enum record_driver_enum default_driver = RECORD_DEFAULT_DRIVER;

   switch (default_driver)
   {
      case 129:
         return "ffmpeg";
      case 128:
         break;
   }

   return "null";
}
