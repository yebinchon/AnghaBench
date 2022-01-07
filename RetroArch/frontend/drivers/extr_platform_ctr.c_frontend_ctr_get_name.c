
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CFGU_GetSystemModel (int*) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static void frontend_ctr_get_name(char* s, size_t len)
{
   u8 device_model = 0xFF;


   CFGU_GetSystemModel(&device_model);

   switch (device_model)
   {
      case 0:
         strlcpy(s, "Old 3DS", len);
         break;
      case 1:
         strlcpy(s, "Old 3DS XL", len);
         break;
      case 2:
         strlcpy(s, "New 3DS", len);
         break;
      case 3:
         strlcpy(s, "Old 2DS", len);
         break;
      case 4:
         strlcpy(s, "New 3DS XL", len);
         break;
      case 5:
         strlcpy(s, "New 2DS XL", len);
         break;

      default:
         strlcpy(s, "Unknown Device", len);
         break;
   }
}
