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

/* Variables and functions */
 int /*<<< orphan*/  kperf_lazy_get_cpu_time_threshold ; 
 int /*<<< orphan*/  kperf_lazy_set_cpu_time_threshold ; 
 int FUNC0 (struct sysctl_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct sysctl_req *req)
{
	return FUNC0(req, kperf_lazy_get_cpu_time_threshold,
		kperf_lazy_set_cpu_time_threshold);
}