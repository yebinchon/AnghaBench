
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* list; scalar_t__ next; scalar_t__ local_use; } ;
typedef TYPE_1__ image_transform ;


 int abort () ;
 TYPE_1__ image_transform_end ;
 TYPE_1__* image_transform_first ;

__attribute__((used)) static void
image_transform_reset_count(void)
{
   image_transform *next = image_transform_first;
   int count = 0;

   while (next != &image_transform_end)
   {
      next->local_use = 0;
      next->next = 0;
      next = next->list;
      ++count;
   }




   if (count > 32) abort();
}
