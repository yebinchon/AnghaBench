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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  in_val ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void
FUNC3(int type)
{
	int ret;
	uint64_t tid;
	int in_val = type;
	FUNC1(NULL, &tid);
	FUNC0("sysctlbyname unlock called from thread %llu \n", tid);
	ret = FUNC2("kern.turnstiles_test_unlock", NULL, 0, &in_val, sizeof(in_val));
	FUNC0("sysctlbyname unlock returned from thread %llu with value %d \n", tid, ret);
}