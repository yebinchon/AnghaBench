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
typedef  int /*<<< orphan*/  thread_qos_t ;
struct kqueue {int dummy; } ;
struct knote {int kn_status; } ;

/* Variables and functions */
 int KN_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct knote*) ; 
 scalar_t__ FUNC2 (struct knote*) ; 
 scalar_t__ FUNC3 (struct kqueue*,struct knote*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct knote*) ; 

__attribute__((used)) static void
FUNC5(struct kqueue *kq, struct knote *kn, int result)
{
	thread_qos_t qos;
	if (FUNC3(kq, kn, result, &qos)) {
		FUNC1(kn);
		FUNC0(kn, qos);
		if (FUNC2(kn) && (kn->kn_status & KN_ACTIVE)) {
			FUNC4(kn);
		}
	}
}