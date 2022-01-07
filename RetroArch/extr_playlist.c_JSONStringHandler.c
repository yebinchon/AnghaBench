
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union string_list_elem_attr {int member_0; } ;
struct TYPE_2__ {int object_depth; int array_depth; int ** current_meta_val; int ** current_entry_val; int * current_meta_string; scalar_t__ in_items; scalar_t__* current_entry_string_list_val; scalar_t__ in_subsystem_roms; } ;
typedef int JSON_StringAttributes ;
typedef int JSON_Parser_HandlerResult ;
typedef int JSON_Parser ;
typedef TYPE_1__ JSONContext ;


 int JSON_Parser_Continue ;
 scalar_t__ JSON_Parser_GetUserData (int ) ;
 int free (int *) ;
 void* strdup (char*) ;
 int string_is_empty (char*) ;
 int string_list_append (scalar_t__,char*,union string_list_elem_attr) ;
 scalar_t__ string_list_new () ;

__attribute__((used)) static JSON_Parser_HandlerResult JSONStringHandler(JSON_Parser parser, char *pValue, size_t length, JSON_StringAttributes attributes)
{
   JSONContext *pCtx = (JSONContext*)JSON_Parser_GetUserData(parser);
   (void)attributes;

   if (pCtx->in_items && pCtx->in_subsystem_roms && pCtx->object_depth == 2 && pCtx->array_depth == 2)
   {
      if (pCtx->current_entry_string_list_val && length && !string_is_empty(pValue))
      {
         union string_list_elem_attr attr = {0};

         if (!*pCtx->current_entry_string_list_val)
            *pCtx->current_entry_string_list_val = string_list_new();

         string_list_append(*pCtx->current_entry_string_list_val, pValue, attr);
      }
   }
   else if (pCtx->in_items && pCtx->object_depth == 2)
   {
      if (pCtx->array_depth == 1)
      {
         if (pCtx->current_entry_val && length && !string_is_empty(pValue))
         {
            if (*pCtx->current_entry_val)
               free(*pCtx->current_entry_val);
            *pCtx->current_entry_val = strdup(pValue);
         }
         else
         {

         }
      }
   }
   else if (pCtx->object_depth == 1)
   {
      if (pCtx->array_depth == 0)
      {
         if (pCtx->current_meta_val && length && !string_is_empty(pValue))
         {



            free(pCtx->current_meta_string);
            pCtx->current_meta_string = ((void*)0);

            if (*pCtx->current_meta_val)
               free(*pCtx->current_meta_val);

            *pCtx->current_meta_val = strdup(pValue);
         }
      }
   }

   pCtx->current_entry_val = ((void*)0);
   pCtx->current_meta_val = ((void*)0);

   return JSON_Parser_Continue;
}
