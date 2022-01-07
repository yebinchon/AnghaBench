
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ x; struct TYPE_8__* next; void* y; } ;
typedef TYPE_1__ stbrp_node ;
typedef void* stbrp_coord ;
struct TYPE_9__ {scalar_t__ height; TYPE_1__* free_head; } ;
typedef TYPE_2__ stbrp_context ;
struct TYPE_10__ {scalar_t__ y; scalar_t__ x; TYPE_1__** prev_link; } ;
typedef TYPE_3__ stbrp__findresult ;


 TYPE_3__ stbrp__skyline_find_best_pos (TYPE_2__*,int,int) ;

__attribute__((used)) static stbrp__findresult stbrp__skyline_pack_rectangle(stbrp_context *context, int width, int height)
{

   stbrp_node *node, *cur;
   stbrp__findresult res = stbrp__skyline_find_best_pos(context, width, height);






   if (res.prev_link == ((void*)0) || res.y + height > context->height || context->free_head == ((void*)0))
   {
      res.prev_link = ((void*)0);
      return res;
   }


   node = context->free_head;
   node->x = (stbrp_coord) res.x;
   node->y = (stbrp_coord) (res.y + height);

   context->free_head = node->next;






   cur = *res.prev_link;
   if (cur->x < res.x)
   {

      stbrp_node *next = cur->next;
      cur->next = node;
      cur = next;
   }
   else
      *res.prev_link = node;



   while (cur->next && cur->next->x <= res.x + width)
   {
      stbrp_node *next = cur->next;


      cur->next = context->free_head;
      context->free_head = cur;
      cur = next;
   }


   node->next = cur;

   if (cur->x < res.x + width)
      cur->x = (stbrp_coord) (res.x + width);

   return res;
}
