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
typedef  int /*<<< orphan*/  UInt32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcache_cache_reap ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mcache_reap_done ; 
 int /*<<< orphan*/  mcache_reaping ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	UInt32 *flag = arg;

	FUNC0(flag == &mcache_reaping);

	FUNC1(mcache_cache_reap);
	FUNC2(mcache_reap_done, flag);
}