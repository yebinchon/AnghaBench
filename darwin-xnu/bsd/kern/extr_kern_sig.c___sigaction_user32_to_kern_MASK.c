#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  __sa_handler; } ;
struct __user32_sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_tramp; TYPE_2__ __sigaction_u; } ;
struct TYPE_3__ {void* __sa_handler; } ;
struct __kern_sigaction {void* sa_tramp; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; TYPE_1__ __sigaction_u; } ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void**,int) ; 

__attribute__((used)) static void
FUNC4(struct __user32_sigaction *in, struct __kern_sigaction *out)
{
	out->__sigaction_u.__sa_handler = FUNC0(in->__sigaction_u.__sa_handler);
	out->sa_tramp = FUNC0(in->sa_tramp);
	out->sa_mask = in->sa_mask;
	out->sa_flags = in->sa_flags;

	kern_return_t kr;
	kr = FUNC3(FUNC2(),
			&out->sa_tramp, 1);
	FUNC1(kr == KERN_SUCCESS);
}