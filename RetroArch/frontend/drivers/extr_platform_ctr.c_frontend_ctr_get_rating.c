
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CFGU_GetSystemModel (int*) ;

__attribute__((used)) static int frontend_ctr_get_rating(void)
{
   u8 device_model = 0xFF;


   CFGU_GetSystemModel(&device_model);

   switch (device_model)
   {
      case 0:
      case 1:
      case 3:

         return 3;
      case 2:
      case 4:
      case 5:

         return 6;
      default:

         break;
   }

   return -1;
}
