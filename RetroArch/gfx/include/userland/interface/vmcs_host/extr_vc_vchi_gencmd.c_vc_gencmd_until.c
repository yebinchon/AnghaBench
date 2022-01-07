
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int response ;


 int release_gencmd_service () ;
 scalar_t__ strncmp (char*,char*,size_t) ;
 scalar_t__ strstr (char*,char const*) ;
 int use_gencmd_service () ;
 int vc_gencmd (char*,int,char*) ;
 scalar_t__ vc_gencmd_string_property (char*,char const*,char**,int*) ;
 int vcos_sleep (int) ;

int vc_gencmd_until( char *cmd,
                     const char *property,
                     char *value,
                     const char *error_string,
                     int timeout) {
   char response[128];
   int length;
   char *ret_value;
   int ret = 1;

   use_gencmd_service();
   for (;timeout > 0; timeout -= 10) {
      vc_gencmd(response, (int)sizeof(response), cmd);
      if (strstr(response,error_string)) {
         ret = 1;
         break;
      }
      else if (vc_gencmd_string_property(response, property, &ret_value, &length) &&
               strncmp(value,ret_value,(size_t)length)==0) {
         ret = 0;
         break;
      }
      vcos_sleep(10);
   }
   release_gencmd_service();

   return ret;
}
