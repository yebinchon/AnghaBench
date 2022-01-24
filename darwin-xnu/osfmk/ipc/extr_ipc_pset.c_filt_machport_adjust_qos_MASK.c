#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct knote {int kn_sfflags; } ;
typedef  TYPE_1__* ipc_kmsg_t ;
struct TYPE_3__ {int /*<<< orphan*/  ikm_qos_override; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MACH_RCV_MSG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct knote *kn, ipc_kmsg_t first)
{
	if (kn->kn_sfflags & MACH_RCV_MSG) {
		int qos = FUNC1(first->ikm_qos_override);
		return FUNC0(qos);
	}
	return 0;
}