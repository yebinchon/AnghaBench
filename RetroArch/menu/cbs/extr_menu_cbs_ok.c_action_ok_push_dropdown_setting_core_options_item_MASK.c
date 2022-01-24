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
typedef  int /*<<< orphan*/  core_option_manager_t ;

/* Variables and functions */
 int /*<<< orphan*/  RARCH_CTL_CORE_OPTIONS_LIST_GET ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC4(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   core_option_manager_t *coreopts = NULL;
   int core_option_idx             = (int)FUNC1(label);

   FUNC3(RARCH_CTL_CORE_OPTIONS_LIST_GET, &coreopts);

   if (!coreopts)
      return -1;

   FUNC2(coreopts, core_option_idx, idx);
   return FUNC0(NULL, NULL, 0, 0);
}