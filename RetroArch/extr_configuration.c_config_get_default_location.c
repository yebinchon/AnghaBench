
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum location_driver_enum { ____Placeholder_location_driver_enum } location_driver_enum ;




 int LOCATION_DEFAULT_DRIVER ;


const char *config_get_default_location(void)
{
   enum location_driver_enum default_driver = LOCATION_DEFAULT_DRIVER;

   switch (default_driver)
   {
      case 130:
         return "android";
      case 129:
         return "corelocation";
      case 128:
         break;
   }

   return "null";
}
