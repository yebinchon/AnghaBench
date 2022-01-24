#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* if_fake_ref ;
struct TYPE_5__ {scalar_t__ iff_retain_count; int /*<<< orphan*/  iff_name; scalar_t__ iff_pending_tx_packet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  feth_cloner ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5(if_fake_ref fakeif)
{
	FUNC1(fakeif->iff_retain_count == 0);
	if (FUNC2(fakeif)) {
		if (fakeif->iff_pending_tx_packet) {
			FUNC4(fakeif->iff_pending_tx_packet);
		}
	}

	FUNC0("%s\n", fakeif->iff_name);
	FUNC3(&feth_cloner, fakeif);
}