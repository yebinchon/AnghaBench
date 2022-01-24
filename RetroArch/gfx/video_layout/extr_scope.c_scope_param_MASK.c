#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* param; int /*<<< orphan*/  level; } ;
typedef  TYPE_1__ scope_t ;
struct TYPE_8__ {char* value; struct TYPE_8__* prev; int /*<<< orphan*/  level; int /*<<< orphan*/ * generator; void* name; } ;
typedef  TYPE_2__ param_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 char const* FUNC4 (TYPE_1__*,char const*) ; 

void FUNC5(scope_t *scope, const char *name, const char *value)
{
   param_t *param;
   char *eval_name = FUNC1(FUNC4(scope, name));
   char *eval_value = FUNC1(FUNC4(scope, value));

   if ((param = FUNC3(scope, eval_name, scope->level)))
   {
      FUNC0(param->value);
      param->value = eval_value;
   }
   else
   {
      param = (param_t*)FUNC2(sizeof(param_t));
      param->name = FUNC1(name);
      param->value = eval_value;
      param->generator = NULL;
      param->level = scope->level;
      param->prev = scope->param;
      scope->param = param;
   }

   FUNC0(eval_name);
}