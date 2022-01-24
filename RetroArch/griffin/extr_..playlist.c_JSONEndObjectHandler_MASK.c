#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int object_depth; int array_depth; TYPE_1__* playlist; int /*<<< orphan*/  capacity_exceeded; scalar_t__ in_items; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  JSON_Parser_HandlerResult ;
typedef  int /*<<< orphan*/  JSON_Parser ;
typedef  TYPE_2__ JSONContext ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_Parser_Continue ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static JSON_Parser_HandlerResult FUNC2(JSON_Parser parser)
{
   JSONContext *pCtx = (JSONContext*)FUNC0(parser);

   if (pCtx->in_items && pCtx->object_depth == 2)
   {
      if ((pCtx->array_depth == 1) && !pCtx->capacity_exceeded)
         pCtx->playlist->size++;
   }

   FUNC1(pCtx->object_depth > 0);

   pCtx->object_depth--;

   return JSON_Parser_Continue;
}