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
struct utun_pcb {scalar_t__ utun_ifp; int utun_flags; int /*<<< orphan*/  utun_ext_ifdata_stats; int /*<<< orphan*/  utun_use_netif; int /*<<< orphan*/  utun_unit; scalar_t__ utun_ctlref; } ;
typedef  int /*<<< orphan*/  mbuf_t ;
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ ifnet_t ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_DATA_EOR ; 
 int /*<<< orphan*/  DLT_NULL ; 
 int UTUN_FLAGS_NO_OUTPUT ; 
 scalar_t__ FUNC0 (struct utun_pcb*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct utun_pcb* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__) ; 

__attribute__((used)) static errno_t
FUNC12(ifnet_t	interface,
			mbuf_t data)
{
	struct utun_pcb	*pcb = FUNC5(interface);
	errno_t result;

	FUNC1(interface == pcb->utun_ifp);

#if UTUN_NEXUS
	if (!pcb->utun_use_netif)
#endif // UTUN_NEXUS
	{
		if (FUNC7(data) >= (int32_t)FUNC0(pcb)) {
			FUNC2(pcb->utun_ifp, DLT_NULL, data, 0, 0);
		}
	}

	if (pcb->utun_flags & UTUN_FLAGS_NO_OUTPUT) {
		/* flush data */
		FUNC9(data);
		return 0;
	}

	// otherwise, fall thru to ctl_enqueumbuf
	if (pcb->utun_ctlref) {
		int	length;

		/*
		 * The ABI requires the protocol in network byte order
		 */
		if (FUNC7(data) >= (int32_t)FUNC0(pcb)) {
			*(u_int32_t *)FUNC8(data) = FUNC4(*(u_int32_t *)FUNC8(data));
		}

		length = FUNC10(data);
		result = FUNC3(pcb->utun_ctlref, pcb->utun_unit, data, CTL_DATA_EOR);
		if (result != 0) {
			FUNC9(data);
			FUNC11("utun_output - ctl_enqueuembuf failed: %d\n", result);
#if UTUN_NEXUS
			if (!pcb->utun_use_netif)
#endif // UTUN_NEXUS
			{
				FUNC6(interface, 0, 0, 1);
			}
		} else {
#if UTUN_NEXUS
			if (!pcb->utun_use_netif)
#endif // UTUN_NEXUS
			{
				if (!pcb->utun_ext_ifdata_stats) {
					FUNC6(interface, 1, length, 0);
				}
			}
		}
	} else {
		FUNC9(data);
	}
	
	return 0;
}