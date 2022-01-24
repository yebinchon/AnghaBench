#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ips; int /*<<< orphan*/  bps; int /*<<< orphan*/  ups; int /*<<< orphan*/  savefile; } ;
struct TYPE_5__ {TYPE_1__ name; } ;
typedef  TYPE_2__ global_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__ g_extern ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  path_main_basename ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
   global_t   *global = &g_extern;

   FUNC2();

   if (global)
      FUNC0(global->name.savefile);

   if (FUNC3(path_main_basename))
      return;

   if (global)
   {
      if (FUNC3(global->name.ups))
         FUNC1(global->name.ups, path_main_basename,
               ".ups",
               sizeof(global->name.ups));

      if (FUNC3(global->name.bps))
         FUNC1(global->name.bps, path_main_basename,
               ".bps",
               sizeof(global->name.bps));

      if (FUNC3(global->name.ips))
         FUNC1(global->name.ips, path_main_basename,
               ".ips",
               sizeof(global->name.ips));
   }
}