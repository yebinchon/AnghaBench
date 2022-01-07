
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* current_entry_val; } ;
typedef TYPE_1__ RtlJSONContext ;
typedef int JSON_StringAttributes ;
typedef int JSON_Parser_HandlerResult ;
typedef int JSON_Parser ;


 int JSON_Parser_Continue ;
 scalar_t__ JSON_Parser_GetUserData (int ) ;
 int free (scalar_t__) ;
 scalar_t__ strdup (char*) ;
 int string_is_empty (char*) ;

__attribute__((used)) static JSON_Parser_HandlerResult RtlJSONStringHandler(JSON_Parser parser, char *pValue, size_t length, JSON_StringAttributes attributes)
{
   RtlJSONContext *pCtx = (RtlJSONContext*)JSON_Parser_GetUserData(parser);
   (void)attributes;

   if (pCtx->current_entry_val && length && !string_is_empty(pValue))
   {
      if (*pCtx->current_entry_val)
         free(*pCtx->current_entry_val);

      *pCtx->current_entry_val = strdup(pValue);
   }


   pCtx->current_entry_val = ((void*)0);

   return JSON_Parser_Continue;
}
