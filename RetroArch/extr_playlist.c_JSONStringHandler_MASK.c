#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
union string_list_elem_attr {int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int object_depth; int array_depth; int /*<<< orphan*/ ** current_meta_val; int /*<<< orphan*/ ** current_entry_val; int /*<<< orphan*/ * current_meta_string; scalar_t__ in_items; scalar_t__* current_entry_string_list_val; scalar_t__ in_subsystem_roms; } ;
typedef  int /*<<< orphan*/  JSON_StringAttributes ;
typedef  int /*<<< orphan*/  JSON_Parser_HandlerResult ;
typedef  int /*<<< orphan*/  JSON_Parser ;
typedef  TYPE_1__ JSONContext ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_Parser_Continue ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,union string_list_elem_attr) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static JSON_Parser_HandlerResult FUNC6(JSON_Parser parser, char *pValue, size_t length, JSON_StringAttributes attributes)
{
   JSONContext *pCtx = (JSONContext*)FUNC0(parser);
   (void)attributes; /* unused */

   if (pCtx->in_items && pCtx->in_subsystem_roms && pCtx->object_depth == 2 && pCtx->array_depth == 2)
   {
      if (pCtx->current_entry_string_list_val && length && !FUNC3(pValue))
      {
         union string_list_elem_attr attr = {0};

         if (!*pCtx->current_entry_string_list_val)
            *pCtx->current_entry_string_list_val = FUNC5();

         FUNC4(*pCtx->current_entry_string_list_val, pValue, attr);
      }
   }
   else if (pCtx->in_items && pCtx->object_depth == 2)
   {
      if (pCtx->array_depth == 1)
      {
         if (pCtx->current_entry_val && length && !FUNC3(pValue))
         {
            if (*pCtx->current_entry_val)
               FUNC1(*pCtx->current_entry_val);
            *pCtx->current_entry_val = FUNC2(pValue);
         }
         else
         {
            /* must be a value for an unknown member we aren't tracking, skip it */
         }
      }
   }
   else if (pCtx->object_depth == 1)
   {
      if (pCtx->array_depth == 0)
      {
         if (pCtx->current_meta_val && length && !FUNC3(pValue))
         {
            /* handle any top-level playlist metadata here */
            /*RARCH_LOG("found meta: %s = %s\n", pCtx->current_meta_string, pValue);*/

            FUNC1(pCtx->current_meta_string);
            pCtx->current_meta_string = NULL;

            if (*pCtx->current_meta_val)
               FUNC1(*pCtx->current_meta_val);

            *pCtx->current_meta_val = FUNC2(pValue);
         }
      }
   }

   pCtx->current_entry_val = NULL;
   pCtx->current_meta_val  = NULL;

   return JSON_Parser_Continue;
}