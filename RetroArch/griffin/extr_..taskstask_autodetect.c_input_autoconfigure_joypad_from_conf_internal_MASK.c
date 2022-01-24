#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  retro_task_t ;
typedef  int /*<<< orphan*/  config_file_t ;
struct TYPE_4__ {int /*<<< orphan*/  autoconfig_directory; } ;
typedef  TYPE_1__ autoconfig_params_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__* input_builtin_autoconfs ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(
      autoconfig_params_t *params, retro_task_t *task)
{
   size_t i;

   /* Load internal autoconfig files  */
   for (i = 0; input_builtin_autoconfs[i]; i++)
   {
      config_file_t *conf = FUNC0(
            input_builtin_autoconfs[i], NULL);
      if (conf && FUNC1(conf, params, task))
        return true;
   }

   if (FUNC2(params->autoconfig_directory))
      return true;
   return false;
}