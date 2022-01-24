#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct pktap_header_buffer {int dummy; } ;
struct bpf_packet {int bpfp_header_length; int /*<<< orphan*/  bpfp_total_length; struct pktap_header_buffer* bpfp_header; } ;
struct bpf_if {scalar_t__ bif_dlt; TYPE_1__* bif_ifp; struct bpf_d* bif_dlist; struct bpf_if* bif_next; } ;
struct bpf_d {int bd_flags; int /*<<< orphan*/  bd_filter; int /*<<< orphan*/  bd_rcount; int /*<<< orphan*/  bd_seesent; struct bpf_d* bd_next; } ;
typedef  TYPE_1__* ifnet_t ;
typedef  int /*<<< orphan*/  bpfp_header_tmp ;
struct TYPE_4__ {scalar_t__ if_type; struct bpf_if* if_bpf; } ;

/* Variables and functions */
 int BPF_PKTHDRV2 ; 
 int BPF_TRUNCATE ; 
 scalar_t__ DLT_PKTAP ; 
 scalar_t__ IFT_PKTAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bpf_mlock ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_d*,struct bpf_packet*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_packet*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct bpf_d*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct pktap_header_buffer*,struct pktap_header_buffer*,int) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC9(
	ifnet_t		ifp,
	u_int32_t	dlt,
	struct bpf_packet *bpf_pkt,
	int		outbound)
{
	struct bpf_d	*d;
	u_int slen;
	struct bpf_if *bp;

	/*
	 * It's possible that we get here after the bpf descriptor has been
	 * detached from the interface; in such a case we simply return.
	 * Lock ordering is important since we can be called asynchronously
	 * (from IOKit) to process an inbound packet; when that happens
	 * we would have been holding its "gateLock" and will be acquiring
	 * "bpf_mlock" upon entering this routine.  Due to that, we release
	 * "bpf_mlock" prior to calling ifnet_set_promiscuous (which will
	 * acquire "gateLock" in the IOKit), in order to avoid a deadlock
	 * when a ifnet_set_promiscuous request simultaneously collides with
	 * an inbound packet being passed into the tap callback.
	 */
	FUNC4(bpf_mlock);
	if (ifp->if_bpf == NULL) {
		FUNC5(bpf_mlock);
		return;
	}
	for (bp = ifp->if_bpf; bp != NULL; bp = bp->bif_next) {
		if (bp->bif_ifp != ifp) {
			/* wrong interface */
			bp = NULL;
			break;
		}
		if (dlt == 0 || bp->bif_dlt == dlt) {
			/* tapping default DLT or DLT matches */
			break;
		}
	}
	if (bp == NULL) {
		goto done;
	}
	for (d = bp->bif_dlist; d; d = d->bd_next) {
		struct bpf_packet *bpf_pkt_saved = bpf_pkt;
		struct bpf_packet bpf_pkt_tmp;
		struct pktap_header_buffer bpfp_header_tmp;

		if (outbound && !d->bd_seesent)
			continue;

		++d->bd_rcount;
		slen = FUNC0(d->bd_filter, (u_char *)bpf_pkt,
		    bpf_pkt->bpfp_total_length, 0);
		if (bp->bif_ifp->if_type == IFT_PKTAP &&
		    bp->bif_dlt == DLT_PKTAP) {
			/*
			 * Need to copy the bpf_pkt because the conversion
			 * to v2 pktap header modifies the content of the
			 * bpfp_header
			 */
			if ((d->bd_flags & BPF_PKTHDRV2) &&
			    bpf_pkt->bpfp_header_length <= sizeof(bpfp_header_tmp)) {
				bpf_pkt_tmp = *bpf_pkt;

				bpf_pkt = &bpf_pkt_tmp;

				FUNC7(&bpfp_header_tmp, bpf_pkt->bpfp_header,
				    bpf_pkt->bpfp_header_length);

				bpf_pkt->bpfp_header = &bpfp_header_tmp;

				FUNC2(bpf_pkt,
				    !!(d->bd_flags & BPF_TRUNCATE));
			}

			if (d->bd_flags & BPF_TRUNCATE)  {
				slen = FUNC8(slen,
				    FUNC3((u_char *)bpf_pkt,
			    bpf_pkt->bpfp_total_length));
		}
		}
		if (slen != 0) {
#if CONFIG_MACF_NET
			if (mac_bpfdesc_check_receive(d, bp->bif_ifp) != 0)
				continue;
#endif
			FUNC1(d, bpf_pkt, slen, outbound);
		}
		bpf_pkt = bpf_pkt_saved;
	}

done:
	FUNC5(bpf_mlock);
}