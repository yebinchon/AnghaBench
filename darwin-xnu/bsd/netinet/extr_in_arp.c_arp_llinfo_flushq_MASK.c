#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct llinfo_arp {int /*<<< orphan*/  la_holdq; scalar_t__ la_prbreq_cnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  held; int /*<<< orphan*/  purged; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ arpstat ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint32_t
FUNC5(struct llinfo_arp *la)
{
	uint32_t held = FUNC4(&la->la_holdq);

	if (held != 0) {
		FUNC2(&arpstat.purged, held);
		FUNC2(&arpstat.held, -held);
		FUNC1(&la->la_holdq);
	}
	la->la_prbreq_cnt = 0;
	FUNC0(FUNC3(&la->la_holdq));
	return (held);
}