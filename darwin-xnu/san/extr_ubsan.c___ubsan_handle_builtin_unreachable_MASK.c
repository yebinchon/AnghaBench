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
struct ubsan_violation {int /*<<< orphan*/ * member_4; struct ubsan_unreachable_desc* unreachable; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct ubsan_unreachable_desc {int /*<<< orphan*/  loc; } ;

/* Variables and functions */
 int /*<<< orphan*/  UBSAN_UNREACHABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ubsan_violation*,int) ; 

void
FUNC1(struct ubsan_unreachable_desc *desc)
{
	struct ubsan_violation v = { &UBSAN_UNREACHABLE, 0, 0, .unreachable = desc, desc->loc };
	FUNC0(&v, true);
}