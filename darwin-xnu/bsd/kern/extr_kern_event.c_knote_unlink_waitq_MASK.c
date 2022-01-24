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
struct waitq {int dummy; } ;
struct kqueue {int /*<<< orphan*/  kq_wqs; } ;
struct knote {int dummy; } ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct knote*) ; 
 struct kqueue* FUNC1 (struct knote*) ; 
 scalar_t__ FUNC2 (struct waitq*,int /*<<< orphan*/ *) ; 

int
FUNC3(struct knote *kn, struct waitq *wq)
{
	struct kqueue *kq = FUNC1(kn);
	kern_return_t kr;

	kr = FUNC2(wq, &kq->kq_wqs);
	FUNC0(kn);
	return ((kr != KERN_SUCCESS) ? EINVAL : 0);
}