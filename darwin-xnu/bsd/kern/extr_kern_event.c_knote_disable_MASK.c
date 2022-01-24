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
struct knote {int kn_status; } ;

/* Variables and functions */
 int KN_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct knote*) ; 

__attribute__((used)) static void
FUNC1(struct knote *kn)
{
	if (kn->kn_status & KN_DISABLED)
		return;

	kn->kn_status |= KN_DISABLED;
	FUNC0(kn);
}