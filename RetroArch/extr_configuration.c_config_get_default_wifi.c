
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wifi_driver_enum { ____Placeholder_wifi_driver_enum } wifi_driver_enum ;



 int WIFI_DEFAULT_DRIVER ;


const char *config_get_default_wifi(void)
{
   enum wifi_driver_enum default_driver = WIFI_DEFAULT_DRIVER;

   switch (default_driver)
   {
      case 129:
         return "connmanctl";
      case 128:
         break;
   }

   return "null";
}
