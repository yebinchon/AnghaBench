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
struct TYPE_4__ {unsigned int argc; struct argument* argv; } ;
struct TYPE_3__ {TYPE_2__ invocation; int /*<<< orphan*/  value; } ;
struct argument {scalar_t__ type; TYPE_1__ a; } ;

/* Variables and functions */
 scalar_t__ AT_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct argument *arg)
{
   unsigned i;

   if (arg->type != AT_FUNCTION)
   {
      FUNC1(&arg->a.value);
      return;
   }

   for (i = 0; i < arg->a.invocation.argc; i++)
      FUNC2(&arg->a.invocation.argv[i]);

   FUNC0((void*)arg->a.invocation.argv);
}