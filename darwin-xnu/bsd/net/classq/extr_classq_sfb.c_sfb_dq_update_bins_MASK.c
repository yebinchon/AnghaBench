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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ u_int64_t ;
typedef  scalar_t__ u_int32_t ;
struct timespec {int dummy; } ;
struct sfbbinstats {int pkts; scalar_t__ bytes; } ;
struct sfb_fcl {int /*<<< orphan*/  fclist; } ;
struct sfb {int sfb_current; scalar_t__ sfb_fc_threshold; int sfb_allocation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sfb*,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct sfbbinstats* FUNC2 (struct sfb*,int,int,int) ; 
 int SFB_FC_LEVEL ; 
 struct sfb_fcl* FUNC3 (struct sfb*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sfb*) ; 
 int SFB_LEVELS ; 
 scalar_t__ FUNC5 (struct sfb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct sfb*,struct sfbbinstats*,int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC9 (struct sfb*,struct sfb_fcl*) ; 

__attribute__((used)) static inline void
FUNC10(struct sfb *sp, uint32_t pkt_sfb_hash, uint32_t pkt_len,
    struct timespec *now, u_int32_t qsize)
{
#if SFB_LEVELS != 2 || SFB_FC_LEVEL != 0
	int i;
#endif /* SFB_LEVELS != 2 || SFB_FC_LEVEL != 0 */
	struct sfbbinstats *bin;
	int s, n;
	struct sfb_fcl *fcl = NULL;
	uint8_t *pkt_sfb_hash8 = (uint8_t *)&pkt_sfb_hash;

	s = sp->sfb_current;
	FUNC7((s + (s ^ 1)) == 1);

	/*
	 * Update current bins; optimize for SFB_LEVELS=2 and SFB_FC_LEVEL=0
	 */
#if SFB_LEVELS == 2 && SFB_FC_LEVEL == 0
	/* Level 0: bin index at [0] for set 0; [2] for set 1 */
	n = SFB_BINMASK(pkt_sfb_hash8[(s << 1)]);
	bin = SFB_BINST(sp, 0, n, s);

	VERIFY(bin->pkts > 0 && bin->bytes >= pkt_len);
	bin->pkts--;
	bin->bytes -= pkt_len;

	if (bin->pkts == 0)
		sfb_decrement_bin(sp, bin, SFB_BINFT(sp, 0, n, s), now);

	/* Deliver flow control feedback to the sockets */
	if (SFB_QUEUE_DELAYBASED(sp)) {
		if (!(SFB_IS_DELAYHIGH(sp)) ||
		    bin->bytes <= sp->sfb_fc_threshold ||
		    bin->pkts == 0 || qsize == 0)
			fcl = SFB_FC_LIST(sp, n);
	} else if (bin->pkts <= (sp->sfb_allocation >> 2)) {
			fcl = SFB_FC_LIST(sp, n);
	}

	if (fcl != NULL && !STAILQ_EMPTY(&fcl->fclist))
		sfb_fclist_append(sp, fcl);
	fcl = NULL;

	/* Level 1: bin index at [1] for set 0; [3] for set 1 */
	n = SFB_BINMASK(pkt_sfb_hash8[(s << 1) + 1]);
	bin = SFB_BINST(sp, 1, n, s);

	VERIFY(bin->pkts > 0 && bin->bytes >= (u_int64_t)pkt_len);
	bin->pkts--;
	bin->bytes -= pkt_len;
	if (bin->pkts == 0)
		sfb_decrement_bin(sp, bin, SFB_BINFT(sp, 1, n, s), now);
#else /* SFB_LEVELS != 2 || SFB_FC_LEVEL != 0 */
	for (i = 0; i < SFB_LEVELS; i++) {
		if (s == 0)		/* set 0, bin index [0,1] */
			n = FUNC1(pkt_sfb_hash8[i]);
		else			/* set 1, bin index [2,3] */
			n = FUNC1(pkt_sfb_hash8[i + 2]);

		bin = FUNC2(sp, i, n, s);

		FUNC7(bin->pkts > 0 && bin->bytes >= pkt_len);
		bin->pkts--;
		bin->bytes -= pkt_len;
		if (bin->pkts == 0)
			FUNC8(sp, bin,
			    FUNC0(sp, i, n, s), now);
		if (i != SFB_FC_LEVEL)
			continue;
		if (FUNC5(sp)) {
			if (!(FUNC4(sp)) ||
			    bin->bytes <= sp->sfb_fc_threshold)
				fcl = FUNC3(sp, n);
		} else if (bin->pkts <= (sp->sfb_allocation >> 2)) {
			fcl = FUNC3(sp, n);
		}
		if (fcl != NULL && !FUNC6(&fcl->fclist))
			FUNC9(sp, fcl);
		fcl = NULL;
	}
#endif /* SFB_LEVELS != 2 || SFB_FC_LEVEL != 0 */
}