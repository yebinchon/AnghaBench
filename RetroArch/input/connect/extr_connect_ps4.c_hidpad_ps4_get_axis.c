
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps4 {int* hatvalue; } ;
struct hidpad_ps4_data {int data; } ;
typedef int int16_t ;


 int abs (int) ;

__attribute__((used)) static int16_t hidpad_ps4_get_axis(void *data, unsigned axis)
{
   struct hidpad_ps4_data *device = (struct hidpad_ps4_data*)data;
   struct ps4 *rpt = device ? (struct ps4*)&device->data : ((void*)0);

   if (device && (axis < 4))
   {
      int val = rpt ? rpt->hatvalue[axis] : 0;
      val = (val << 8) - 0x8000;
      return (abs(val) > 0x1000) ? val : 0;
   }

   return 0;
}
