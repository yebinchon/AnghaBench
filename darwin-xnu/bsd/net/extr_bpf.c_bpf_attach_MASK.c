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
typedef  int u_int32_t ;
struct bpf_if {scalar_t__ bif_ifp; int bif_dlt; int bif_hdrlen; int bif_exthdrlen; struct bpf_if* bif_next; int /*<<< orphan*/  bif_tap; int /*<<< orphan*/  bif_send; } ;
struct bpf_hdr_ext {int dummy; } ;
typedef  scalar_t__ ifnet_t ;
typedef  int /*<<< orphan*/  errno_t ;
typedef  int /*<<< orphan*/  bpf_tap_func ;
typedef  int /*<<< orphan*/  bpf_send_func ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int DLT_EN10MB ; 
 int /*<<< orphan*/  EEXIST ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_if*,int /*<<< orphan*/ ) ; 
 scalar_t__ IFT_ETHER ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAIT ; 
 int M_ZERO ; 
 int SIZEOF_BPF_HDR ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ bootverbose ; 
 struct bpf_if* bpf_iflist ; 
 int /*<<< orphan*/  bpf_mlock ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 

errno_t
FUNC10(
	ifnet_t			ifp,
	u_int32_t		dlt,
	u_int32_t		hdrlen,
	bpf_send_func	send,
	bpf_tap_func	tap)
{
	struct bpf_if *bp;
	struct bpf_if *bp_new;
	struct bpf_if *bp_before_first = NULL;
	struct bpf_if *bp_first = NULL;
	struct bpf_if *bp_last = NULL;
	boolean_t found;

	bp_new = (struct bpf_if *) FUNC2(sizeof(*bp_new), M_DEVBUF,
	    M_WAIT | M_ZERO);
	if (bp_new == 0)
		FUNC8("bpfattach");

	FUNC6(bpf_mlock);

	/*
	 * Check if this interface/dlt is already attached. Remember the
	 * first and last attachment for this interface, as well as the
	 * element before the first attachment.
	 */
	found = FALSE;
	for (bp = bpf_iflist; bp != NULL; bp = bp->bif_next) {
		if (bp->bif_ifp != ifp) {
			if (bp_first != NULL) {
				/* no more elements for this interface */
				break;
			}
			bp_before_first = bp;
		} else {
			if (bp->bif_dlt == dlt) {
				found = TRUE;
				break;
			}
			if (bp_first == NULL) {
				bp_first = bp;
			}
			bp_last = bp;
		}
	}
	if (found) {
		FUNC7(bpf_mlock);
		FUNC9("bpfattach - %s with dlt %d is already attached\n",
			FUNC3(ifp), dlt);
		FUNC1(bp_new, M_DEVBUF);
		return (EEXIST);
	}

	bp_new->bif_ifp = ifp;
	bp_new->bif_dlt = dlt;
	bp_new->bif_send = send;
	bp_new->bif_tap = tap;

	if (bp_first == NULL) {
		/* No other entries for this ifp */
		bp_new->bif_next = bpf_iflist;
		bpf_iflist = bp_new;
	} else {
		if (FUNC5(ifp) == IFT_ETHER && dlt == DLT_EN10MB) {
			/* Make this the first entry for this interface */
			if (bp_before_first != NULL) {
				/*  point the previous to us */
				bp_before_first->bif_next = bp_new;
			} else {
				/* we're the new head */
				bpf_iflist = bp_new;
			}
			bp_new->bif_next = bp_first;
		} else {
			/* Add this after the last entry for this interface */
			bp_new->bif_next = bp_last->bif_next;
			bp_last->bif_next = bp_new;
		}
	}

	/*
	 * Compute the length of the bpf header.  This is not necessarily
	 * equal to SIZEOF_BPF_HDR because we want to insert spacing such
	 * that the network layer header begins on a longword boundary (for
	 * performance reasons and to alleviate alignment restrictions).
	 */
	bp_new->bif_hdrlen = FUNC0(hdrlen + SIZEOF_BPF_HDR) - hdrlen;
	bp_new->bif_exthdrlen = FUNC0(hdrlen +
	    sizeof(struct bpf_hdr_ext)) - hdrlen;

	/* Take a reference on the interface */
	FUNC4(ifp);

	FUNC7(bpf_mlock);

#ifndef __APPLE__
	if (bootverbose)
		FUNC9("bpf: %s attached\n", FUNC3(ifp));
#endif

	return (0);
}