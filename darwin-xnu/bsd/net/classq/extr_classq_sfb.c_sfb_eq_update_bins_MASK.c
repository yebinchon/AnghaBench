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
struct sfbbinstats {int /*<<< orphan*/  bytes; int /*<<< orphan*/  pkts; } ;
struct sfb {int sfb_current; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct sfbbinstats* FUNC1 (struct sfb*,int,int,int) ; 
 int SFB_LEVELS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline void
FUNC3(struct sfb *sp, uint32_t pkt_sfb_hash, uint32_t pkt_len)
{
#if SFB_LEVELS != 2
	int i, n;
#endif /* SFB_LEVELS != 2 */
	int s;
	struct sfbbinstats *bin;
	uint8_t *pkt_sfb_hash8 = (uint8_t *)&pkt_sfb_hash;
	s = sp->sfb_current;
	FUNC2((s + (s ^ 1)) == 1);

	/*
	 * Update current bins; optimize for SFB_LEVELS=2
	 */
#if SFB_LEVELS == 2
	/* Level 0: bin index at [0] for set 0; [2] for set 1 */
	bin = SFB_BINST(sp, 0,
	    SFB_BINMASK(pkt_sfb_hash8[(s << 1)]), s);
	bin->pkts++;
	bin->bytes += pkt_len;

	/* Level 1: bin index at [1] for set 0; [3] for set 1 */
	bin = SFB_BINST(sp, 1,
	    SFB_BINMASK(pkt_sfb_hash8[(s << 1) + 1]), s);
	bin->pkts++;
	bin->bytes += pkt_len;

#else /* SFB_LEVELS != 2 */
	for (i = 0; i < SFB_LEVELS; i++) {
		if (s == 0)		/* set 0, bin index [0,1] */
			n = FUNC0(pkt_sfb_hash8[i]);
		else			/* set 1, bin index [2,3] */
			n = FUNC0(pkt_sfb_hash8[i + 2]);

		bin = FUNC1(sp, i, n, s);
		bin->pkts++;
		bin->bytes += pkt_len;
	}
#endif /* SFB_LEVELS != 2 */
}