#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  runtime_log_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  libretro_core_runtime_usec ; 
 int /*<<< orphan*/  runtime_content_path ; 
 int /*<<< orphan*/  runtime_core_path ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(bool log_per_core)
{
   /* Initialise runtime log file */
   runtime_log_t *runtime_log = FUNC2(
         runtime_content_path, runtime_core_path, log_per_core);

   if (!runtime_log)
      return;

   /* Add additional runtime */
   FUNC1(runtime_log, libretro_core_runtime_usec);

   /* Update 'last played' entry */
   FUNC4(runtime_log);

   /* Save runtime log file */
   FUNC3(runtime_log);

   /* Clean up */
   FUNC0(runtime_log);
}