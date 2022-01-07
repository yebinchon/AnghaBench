
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidpad_ps2adapter_data {int* data; } ;
typedef int int16_t ;


 int abs (int) ;

__attribute__((used)) static int16_t hidpad_ps2adapter_get_axis(void *data, unsigned axis)
{
   int val = 0;
   struct hidpad_ps2adapter_data *device = (struct hidpad_ps2adapter_data*)data;

   if (!device || axis >= 4)
      return 0;

   switch (axis)
   {
      case 0:
         val = device->data[4];
         break;
      case 1:
         val = device->data[5];
         break;
      case 2:
         val = device->data[3];
         break;
      case 3:
         val = device->data[2];
         break;
   }

   val = (val << 8) - 0x8000;

   return (abs(val) > 0x1000) ? val : 0;
}
