
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int png_uint_32 ;
struct TYPE_4__ {unsigned int local_use; struct TYPE_4__* list; } ;
typedef TYPE_1__ image_transform ;


 TYPE_1__ image_transform_end ;
 TYPE_1__* image_transform_first ;

__attribute__((used)) static int
image_transform_test_counter(png_uint_32 counter, unsigned int max)
{



   image_transform *next = image_transform_first;

   while (next != &image_transform_end)
   {

      counter >>= 1;


      if (max > 1 && next->local_use < max)
         return 1;
      next = next->list;
   }

   return max <= 1 && counter == 0;
}
