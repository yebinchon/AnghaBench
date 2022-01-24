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
typedef  int /*<<< orphan*/  u_int32_t ;
struct kctl {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 struct kctl* FUNC0 (char const*) ; 
 int /*<<< orphan*/  ctl_mtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

u_int32_t
FUNC3(const char *name)
{
	u_int32_t	ctl_id = 0;
	struct kctl	*kctl;

	FUNC1(ctl_mtx);
	kctl = FUNC0(name);
	if (kctl)
		ctl_id = kctl->id;
	FUNC2(ctl_mtx);

	return (ctl_id);
}