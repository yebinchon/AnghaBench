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
typedef  scalar_t__ uint32_t ;
struct sysctl_req {scalar_t__ oldptr; scalar_t__ newptr; scalar_t__ newlen; } ;
struct kperf_kdebug_filter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t FUNC0 (scalar_t__) ; 
 int FUNC1 (struct sysctl_req*,struct kperf_kdebug_filter*,size_t) ; 
 scalar_t__ USER_ADDR_NULL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct kperf_kdebug_filter**) ; 
 int FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(struct sysctl_req *req)
{
	FUNC2(req != NULL);

	if (req->oldptr != USER_ADDR_NULL) {
		struct kperf_kdebug_filter *filter = NULL;
		uint32_t n_debugids = FUNC3(&filter);
		size_t filter_size = FUNC0(n_debugids);

		if (n_debugids == 0) {
			return EINVAL;
		}

		return FUNC1(req, filter, filter_size);
	} else if (req->newptr != USER_ADDR_NULL) {
		return FUNC4(req->newptr, (uint32_t)req->newlen);
	} else {
		return EINVAL;
	}
}