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
struct proc {int dummy; } ;
struct kqueue {int dummy; } ;
struct knote {int dummy; } ;
struct kevent_internal_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 struct knote* FUNC2 (struct kqueue*,struct kevent_internal_s*,int,struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct kqueue*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 

__attribute__((used)) static struct knote *
FUNC6(struct kqueue *kq, struct kevent_internal_s *kev,
		bool is_fd, struct proc *p)
{
	struct knote * ret;

	if (is_fd)
		FUNC4(p);
	else
		FUNC0(p);

	ret = FUNC2(kq, kev, is_fd, p);

	if (ret) {
		FUNC3(kq);
	}

	if (is_fd)
		FUNC5(p);
	else
		FUNC1(p);

	return ret;
}