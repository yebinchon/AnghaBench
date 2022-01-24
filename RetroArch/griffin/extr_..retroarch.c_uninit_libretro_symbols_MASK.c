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
struct retro_core_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RARCH_CTL_CORE_OPTIONS_DEINIT ; 
 int camera_driver_active ; 
 int core_set_shared_context ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * lib_handle ; 
 int location_driver_active ; 
 int /*<<< orphan*/  FUNC1 (struct retro_core_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct retro_core_t *current_core)
{
#ifdef HAVE_DYNAMIC
   if (lib_handle)
      dylib_close(lib_handle);
   lib_handle = NULL;
#endif

   FUNC1(current_core, 0, sizeof(struct retro_core_t));

   core_set_shared_context = false;

   FUNC3(RARCH_CTL_CORE_OPTIONS_DEINIT, NULL);
   FUNC5();
   FUNC4();
   camera_driver_active      = false;
   location_driver_active    = false;

   /* Performance counters no longer valid. */
   FUNC2();
}