#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int elements_count; int groups_count; TYPE_2__* param; TYPE_2__* groups; TYPE_2__* elements; } ;
typedef  TYPE_1__ scope_t ;
struct TYPE_9__ {struct TYPE_9__* prev; } ;
typedef  TYPE_2__ param_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(scope_t *scope)
{
   int i;
   param_t *param;
   param_t *prev;

   for (i = 0; i < scope->elements_count; ++i)
      FUNC0(&scope->elements[i]);
   FUNC1(scope->elements);

   for (i = 0; i < scope->groups_count; ++i)
      FUNC3(&scope->groups[i]);
   FUNC1(scope->groups);

   for (param = scope->param; param; param = prev)
   {
      prev = param->prev;
      FUNC2(param);
      FUNC1(param);
   }
}