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
struct ipsec_pcb {int dummy; } ;
typedef  int /*<<< orphan*/  mbuf_t ;
typedef  int /*<<< orphan*/  ifnet_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ipsec_pcb* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(ifnet_t	interface)
{
	mbuf_t data;
	struct ipsec_pcb *pcb = FUNC2(interface);

	FUNC0(pcb != NULL);
	for (;;) {
		if (FUNC1(interface, &data) != 0)
			break;
		if (FUNC3(interface, data) != 0)
			break;
	}
}