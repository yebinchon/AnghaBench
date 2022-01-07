
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int object_depth; int array_depth; TYPE_1__* playlist; int capacity_exceeded; scalar_t__ in_items; } ;
struct TYPE_3__ {int size; } ;
typedef int JSON_Parser_HandlerResult ;
typedef int JSON_Parser ;
typedef TYPE_2__ JSONContext ;


 int JSON_Parser_Continue ;
 scalar_t__ JSON_Parser_GetUserData (int ) ;
 int retro_assert (int) ;

__attribute__((used)) static JSON_Parser_HandlerResult JSONEndObjectHandler(JSON_Parser parser)
{
   JSONContext *pCtx = (JSONContext*)JSON_Parser_GetUserData(parser);

   if (pCtx->in_items && pCtx->object_depth == 2)
   {
      if ((pCtx->array_depth == 1) && !pCtx->capacity_exceeded)
         pCtx->playlist->size++;
   }

   retro_assert(pCtx->object_depth > 0);

   pCtx->object_depth--;

   return JSON_Parser_Continue;
}
