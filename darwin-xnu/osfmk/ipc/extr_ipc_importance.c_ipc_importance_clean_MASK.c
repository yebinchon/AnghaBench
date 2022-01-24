#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  TYPE_2__* ipc_kmsg_t ;
typedef  scalar_t__ ipc_importance_elem_t ;
struct TYPE_6__ {scalar_t__ ikm_importance; TYPE_1__* ikm_header; } ;
struct TYPE_5__ {int /*<<< orphan*/  msgh_remote_port; int /*<<< orphan*/  msgh_bits; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ IIE_NULL ; 
 int /*<<< orphan*/  IPID_OPTION_NORMAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_MSGH_BITS_RAISEIMP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC10(
	ipc_kmsg_t		kmsg)
{
	ipc_port_t		port;

	/* Is the kmsg still linked? If so, remove that first */
	if (IIE_NULL != kmsg->ikm_importance) {
		ipc_importance_elem_t	elem;

		FUNC7();
		elem = FUNC6(kmsg);
		FUNC2(IIE_NULL != elem);
		FUNC8(elem);
		/* importance unlocked */
	}

	/* See if there is a legacy importance boost to be dropped from port */
	if (FUNC1(kmsg->ikm_header->msgh_bits)) {
		kmsg->ikm_header->msgh_bits &= ~MACH_MSGH_BITS_RAISEIMP;
		port = kmsg->ikm_header->msgh_remote_port;
		if (FUNC0(port)) {
			FUNC4(port);
			/* inactive ports already had their importance boosts dropped */
			if (!FUNC3(port) || 
			    FUNC9(port, IPID_OPTION_NORMAL, -1) == FALSE) {
				FUNC5(port);
			}
		}
	}
}