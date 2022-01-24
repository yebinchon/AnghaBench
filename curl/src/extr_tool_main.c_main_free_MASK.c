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
struct GlobalConfig {int /*<<< orphan*/ * last; int /*<<< orphan*/ * first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct GlobalConfig*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct GlobalConfig *config)
{
  /* Cleanup the easy handle */
  /* Main cleanup */
  FUNC5();
  FUNC4();
  FUNC7();
#ifdef USE_NSS
  if(PR_Initialized()) {
    /* prevent valgrind from reporting still reachable mem from NSRP arenas */
    PL_ArenaFinish();
    /* prevent valgrind from reporting possibly lost memory (fd cache, ...) */
    PR_Cleanup();
  }
#endif
  FUNC6(config);

  /* Free the config structures */
  FUNC3(config->last);
  config->first = NULL;
  config->last = NULL;
}