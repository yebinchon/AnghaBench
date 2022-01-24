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
struct user32_sigaltstack {int /*<<< orphan*/  ss_sp; int /*<<< orphan*/  ss_size; int /*<<< orphan*/  ss_flags; } ;
struct kern_sigaltstack {int /*<<< orphan*/  ss_sp; int /*<<< orphan*/  ss_size; int /*<<< orphan*/  ss_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct user32_sigaltstack *in, struct kern_sigaltstack *out)
{
	out->ss_flags	= in->ss_flags;
	out->ss_size	= in->ss_size;
	out->ss_sp		= FUNC0(in->ss_sp);
}