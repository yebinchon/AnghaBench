
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int object_depth; int array_depth; int capacity_exceeded; TYPE_1__* playlist; int * current_entry; scalar_t__ in_items; } ;
struct TYPE_3__ {size_t size; size_t cap; int modified; int * entries; } ;
typedef int JSON_Parser_HandlerResult ;
typedef int JSON_Parser ;
typedef TYPE_2__ JSONContext ;


 int JSON_Parser_Continue ;
 scalar_t__ JSON_Parser_GetUserData (int ) ;
 int RARCH_WARN (char*) ;

__attribute__((used)) static JSON_Parser_HandlerResult JSONStartObjectHandler(JSON_Parser parser)
{
   JSONContext *pCtx = (JSONContext*)JSON_Parser_GetUserData(parser);

   pCtx->object_depth++;

   if (pCtx->in_items && pCtx->object_depth == 2)
   {
      if ((pCtx->array_depth == 1) && !pCtx->capacity_exceeded)
      {
         if (pCtx->playlist->size < pCtx->playlist->cap)
            pCtx->current_entry = &pCtx->playlist->entries[pCtx->playlist->size];
         else
         {



            RARCH_WARN("JSON file contains more entries than current playlist capacity. Excess entries will be discarded.\n");
            pCtx->capacity_exceeded = 1;
            pCtx->current_entry = ((void*)0);




            pCtx->playlist->modified = 1;
         }
      }
   }

   return JSON_Parser_Continue;
}
