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
typedef  int /*<<< orphan*/  fdOpenInfoRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(fdOpenInfoRef info, int pid)
{
	int	status;

	// check root and current working directory
	status = FUNC2(info, pid);
	if (status != 0) {
		// if error or match
		return status;
	}

	// check open file descriptors
	status = FUNC0(info, pid);
	if (status != 0) {
		// if error or match
		return status;
	}

	// check per-thread working directories
	status = FUNC1(info, pid);
	if (status != 0) {
		// if error or match
		return status;
	}

	return 0;
}