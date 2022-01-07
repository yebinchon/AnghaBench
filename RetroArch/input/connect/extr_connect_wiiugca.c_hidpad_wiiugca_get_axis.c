
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidpad_wiiugca_data {int* data; } ;
typedef int int16_t ;


 int abs (int) ;

__attribute__((used)) static int16_t hidpad_wiiugca_get_axis(void *data, unsigned axis)
{
   int val;
   struct hidpad_wiiugca_data *device = (struct hidpad_wiiugca_data*)data;

   if (!device || axis >= 4)
      return 0;

   val = device->data[5 + axis];

   if (axis % 2)
      val = 0x8000 - (val << 8);
   else
      val = (val << 8) - 0x8000;

   return (abs(val) > 0x1000) ? val : 0;
}
