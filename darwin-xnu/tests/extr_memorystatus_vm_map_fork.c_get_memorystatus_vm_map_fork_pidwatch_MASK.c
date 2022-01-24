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
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t
FUNC2()
{
	uint64_t value = 0;
	size_t val_len = sizeof(value);
	int err;

	err = FUNC1("kern.memorystatus_vm_map_fork_pidwatch", &value, &val_len, NULL, 0);
	T_QUIET;
	FUNC0(err, "get sysctlbyname(kern.memorystatus_vm_map_fork_pidwatch...) failed");

	return value;
}