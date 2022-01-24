#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * autoconfig_directory; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ autoconfig_params_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(autoconfig_params_t *params)
{
   if (!params)
      return;
   if (!FUNC1(params->name))
      FUNC0(params->name);
   if (!FUNC1(params->autoconfig_directory))
      FUNC0(params->autoconfig_directory);
   params->name                 = NULL;
   params->autoconfig_directory = NULL;
}