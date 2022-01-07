
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; struct TYPE_3__* next; } ;
typedef TYPE_1__ stbrp_node ;
typedef int stbrp_context ;


 int STBRP_ASSERT (int) ;

__attribute__((used)) static int stbrp__skyline_find_min_y(stbrp_context *c,
      stbrp_node *first, int x0, int width, int *pwaste)
{
   int min_y, visited_width, waste_area;
   stbrp_node *node = first;
   int x1 = x0 + width;

   STBRP_ASSERT(first->x <= x0);
   STBRP_ASSERT(node->next->x > x0);
   STBRP_ASSERT(node->x <= x0);

   min_y = 0;
   waste_area = 0;
   visited_width = 0;
   while (node->x < x1)
   {
      if (node->y > min_y)
      {




         waste_area += visited_width * (node->y - min_y);
         min_y = node->y;


         if (node->x < x0)
            visited_width += node->next->x - x0;
         else
            visited_width += node->next->x - node->x;
      }
      else
      {

         int under_width = node->next->x - node->x;
         if (under_width + visited_width > width)
            under_width = width - visited_width;
         waste_area += under_width * (min_y - node->y);
         visited_width += under_width;
      }
      node = node->next;
   }

   *pwaste = waste_area;
   return min_y;
}
