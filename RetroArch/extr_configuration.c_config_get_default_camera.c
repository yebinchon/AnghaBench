
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum camera_driver_enum { ____Placeholder_camera_driver_enum } camera_driver_enum ;




 int CAMERA_DEFAULT_DRIVER ;




const char *config_get_default_camera(void)
{
   enum camera_driver_enum default_driver = CAMERA_DEFAULT_DRIVER;

   switch (default_driver)
   {
      case 128:
         return "video4linux2";
      case 129:
         return "rwebcam";
      case 132:
         return "android";
      case 131:
         return "avfoundation";
      case 130:
         break;
   }

   return "null";
}
