
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum playlist_thumbnail_mode { ____Placeholder_playlist_thumbnail_mode } playlist_thumbnail_mode ;
typedef enum playlist_label_display_mode { ____Placeholder_playlist_label_display_mode } playlist_label_display_mode ;
struct TYPE_2__ {int object_depth; int array_depth; int* current_entry_int_val; unsigned int* current_entry_uint_val; int* current_meta_label_display_mode_val; int* current_meta_thumbnail_mode_val; int * current_meta_string; scalar_t__ in_items; } ;
typedef int JSON_StringAttributes ;
typedef int JSON_Parser_HandlerResult ;
typedef int JSON_Parser ;
typedef TYPE_1__ JSONContext ;


 int JSON_Parser_Continue ;
 scalar_t__ JSON_Parser_GetUserData (int ) ;
 int free (int *) ;
 int string_is_empty (char*) ;
 scalar_t__ strtoul (char*,int *,int) ;

__attribute__((used)) static JSON_Parser_HandlerResult JSONNumberHandler(JSON_Parser parser, char *pValue, size_t length, JSON_StringAttributes attributes)
{
   JSONContext *pCtx = (JSONContext*)JSON_Parser_GetUserData(parser);
   (void)attributes;

   if (pCtx->in_items && pCtx->object_depth == 2)
   {
      if (pCtx->array_depth == 1)
      {
         if (pCtx->current_entry_int_val && length && !string_is_empty(pValue))
            *pCtx->current_entry_int_val = (int)strtoul(pValue, ((void*)0), 10);
         else if (pCtx->current_entry_uint_val && length && !string_is_empty(pValue))
            *pCtx->current_entry_uint_val = (unsigned)strtoul(pValue, ((void*)0), 10);
         else
         {

         }
      }
   }
   else if (pCtx->object_depth == 1)
   {
      if (pCtx->array_depth == 0)
      {
         if (pCtx->current_meta_string && length && !string_is_empty(pValue))
         {



            free(pCtx->current_meta_string);
            pCtx->current_meta_string = ((void*)0);

            if (pCtx->current_meta_label_display_mode_val)
               *pCtx->current_meta_label_display_mode_val = (enum playlist_label_display_mode)strtoul(pValue, ((void*)0), 10);
            else if (pCtx->current_meta_thumbnail_mode_val)
               *pCtx->current_meta_thumbnail_mode_val = (enum playlist_thumbnail_mode)strtoul(pValue, ((void*)0), 10);
            else
            {

            }
         }
      }
   }

   pCtx->current_entry_int_val = ((void*)0);
   pCtx->current_entry_uint_val = ((void*)0);
   pCtx->current_meta_label_display_mode_val = ((void*)0);
   pCtx->current_meta_thumbnail_mode_val = ((void*)0);

   return JSON_Parser_Continue;
}
