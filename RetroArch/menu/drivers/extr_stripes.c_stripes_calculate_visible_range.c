
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float margins_screen_top; float icon_size; } ;
typedef TYPE_1__ stripes_handle_t ;


 float stripes_item_y (TYPE_1__ const*,unsigned int,unsigned int) ;

__attribute__((used)) static void stripes_calculate_visible_range(const stripes_handle_t *stripes,
      unsigned height, size_t list_size, unsigned current,
      unsigned *first, unsigned *last)
{
   unsigned j;
   float base_y = stripes->margins_screen_top;

   *first = 0;
   *last = list_size ? list_size - 1 : 0;

   if (current)
   {
      for (j = current; j-- > 0; )
      {
         float bottom = stripes_item_y(stripes, j, current)
            + base_y + stripes->icon_size;

         if (bottom < 0)
            break;

         *first = j;
      }
   }

   for (j = current+1; j < list_size; j++)
   {
      float top = stripes_item_y(stripes, j, current) + base_y;

      if (top > height)
         break;

      *last = j;
   }
}
