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
struct knote {int kn_status; int kn_id; int /*<<< orphan*/  kn_filtid; int /*<<< orphan*/  kn_udata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSD_KEVENT_KNOTE_ACTIVATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int KN_ACTIVE ; 
 scalar_t__ FUNC2 (struct knote*) ; 
 int /*<<< orphan*/  FUNC3 (struct knote*) ; 

__attribute__((used)) static void
FUNC4(struct knote *kn)
{
	if (kn->kn_status & KN_ACTIVE)
		return;

	FUNC0(FUNC1(BSD_KEVENT_KNOTE_ACTIVATE),
	              kn->kn_udata, kn->kn_status | (kn->kn_id << 32),
	              kn->kn_filtid);

	kn->kn_status |= KN_ACTIVE;
	if (FUNC2(kn))
		FUNC3(kn);
}