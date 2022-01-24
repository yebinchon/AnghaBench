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
struct sysctl_req {int dummy; } ;
typedef  int /*<<< orphan*/  should_reset ;

/* Variables and functions */
 int /*<<< orphan*/  KTRACE_KPERF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sysctl_req*,int,int,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct sysctl_req *req)
{
	int should_reset = 0;

	int error = FUNC1(req, should_reset, sizeof(should_reset),
		&should_reset, NULL);
	if (error) {
		return error;
	}

	if (should_reset) {
		FUNC0(KTRACE_KPERF);
	}
	return 0;
}