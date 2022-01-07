
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int array_depth; int object_depth; int in_items; int in_subsystem_roms; int current_items_string; int current_meta_string; } ;
typedef int JSON_Parser_HandlerResult ;
typedef int JSON_Parser ;
typedef TYPE_1__ JSONContext ;


 int JSON_Parser_Continue ;
 scalar_t__ JSON_Parser_GetUserData (int ) ;
 scalar_t__ string_is_equal (int ,char*) ;

__attribute__((used)) static JSON_Parser_HandlerResult JSONStartArrayHandler(JSON_Parser parser)
{
   JSONContext *pCtx = (JSONContext*)JSON_Parser_GetUserData(parser);

   pCtx->array_depth++;

   if (pCtx->object_depth == 1)
   {
      if (string_is_equal(pCtx->current_meta_string, "items") && pCtx->array_depth == 1)
         pCtx->in_items = 1;
   }
   else if (pCtx->object_depth == 2)
   {
      if (pCtx->array_depth == 2)
         if (string_is_equal(pCtx->current_items_string, "subsystem_roms"))
            pCtx->in_subsystem_roms = 1;
   }

   return JSON_Parser_Continue;
}
