
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ x; struct TYPE_8__* next; } ;
typedef TYPE_1__ stbrp_node ;
struct TYPE_9__ {int align; scalar_t__ width; scalar_t__ heuristic; int height; TYPE_1__* active_head; } ;
typedef TYPE_2__ stbrp_context ;
struct TYPE_10__ {int x; int y; TYPE_1__** prev_link; } ;
typedef TYPE_3__ stbrp__findresult ;


 int STBRP_ASSERT (int) ;
 scalar_t__ STBRP_HEURISTIC_Skyline_BF_sortHeight ;
 scalar_t__ STBRP_HEURISTIC_Skyline_BL_sortHeight ;
 int stbrp__skyline_find_min_y (TYPE_2__*,TYPE_1__*,int,int,int*) ;

__attribute__((used)) static stbrp__findresult stbrp__skyline_find_best_pos(stbrp_context *c, int width, int height)
{
   int best_waste = (1<<30), best_x, best_y = (1 << 30);
   stbrp__findresult fr;
   stbrp_node **prev, *node, *tail, **best = ((void*)0);


   width = (width + c->align - 1);
   width -= width % c->align;
   STBRP_ASSERT(width % c->align == 0);

   node = c->active_head;
   prev = &c->active_head;
   while (node->x + width <= c->width)
   {
      int waste;
      int y = stbrp__skyline_find_min_y(c, node, node->x, width, &waste);

      if (c->heuristic == STBRP_HEURISTIC_Skyline_BL_sortHeight)
      {

         if (y < best_y)
         {
            best_y = y;
            best = prev;
         }
      }
      else
      {

         if (y + height <= c->height)
         {

            if (y < best_y || (y == best_y && waste < best_waste))
            {
               best_y = y;
               best_waste = waste;
               best = prev;
            }
         }
      }
      prev = &node->next;
      node = node->next;
   }

   best_x = (best == ((void*)0)) ? 0 : (*best)->x;
   if (c->heuristic == STBRP_HEURISTIC_Skyline_BF_sortHeight)
   {
      tail = c->active_head;
      node = c->active_head;
      prev = &c->active_head;

      while (tail->x < width)
         tail = tail->next;
      while (tail)
      {
         int xpos = tail->x - width;
         int y,waste;
         STBRP_ASSERT(xpos >= 0);


         while (node->next->x <= xpos)
         {
            prev = &node->next;
            node = node->next;
         }

         STBRP_ASSERT(node->next->x > xpos && node->x <= xpos);
         y = stbrp__skyline_find_min_y(c, node, xpos, width, &waste);

         if (y + height < c->height)
         {
            if (y <= best_y)
            {
               if (y < best_y || waste < best_waste || (waste==best_waste && xpos < best_x))
               {
                  best_x = xpos;
                  STBRP_ASSERT(y <= best_y);
                  best_y = y;
                  best_waste = waste;
                  best = prev;
               }
            }
         }
         tail = tail->next;
      }
   }

   fr.prev_link = best;
   fr.x = best_x;
   fr.y = best_y;
   return fr;
}
