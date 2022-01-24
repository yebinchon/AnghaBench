#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct sockaddr_dl {scalar_t__ sdl_alen; } ;
struct TYPE_3__ {scalar_t__ rmx_expire; } ;
struct rtentry {scalar_t__ rt_expire; int rt_flags; scalar_t__ rt_refcnt; int /*<<< orphan*/  rt_gateway; TYPE_1__ rt_rmx; } ;
struct llinfo_arp {int la_flags; scalar_t__ la_probeexp; scalar_t__ la_asked; int /*<<< orphan*/  la_holdq; scalar_t__ la_prbreq_cnt; struct rtentry* la_rt; } ;
struct arptf_arg {int /*<<< orphan*/  killed; scalar_t__ probing; int /*<<< orphan*/  draining; int /*<<< orphan*/  aging; int /*<<< orphan*/  sticky; int /*<<< orphan*/  qsize; int /*<<< orphan*/  qlen; int /*<<< orphan*/  found; } ;
struct TYPE_4__ {int /*<<< orphan*/  timeouts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int LLINFO_PROBING ; 
 int /*<<< orphan*/  ROUTE_LLENTRY_UNREACH ; 
 int RTF_REJECT ; 
 int RTF_STATIC ; 
 int /*<<< orphan*/  RTM_DELETE ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 struct sockaddr_dl* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct llinfo_arp*) ; 
 TYPE_2__ arpstat ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rnh_lock ; 
 int /*<<< orphan*/  FUNC9 (struct rtentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(struct llinfo_arp *la, void *arg)
{
	struct arptf_arg *ap = arg;
	struct rtentry *rt = la->la_rt;
	uint64_t timenow;

	FUNC0(rnh_lock, LCK_MTX_ASSERT_OWNED);

	/* rnh_lock acquired by caller protects rt from going away */
	FUNC1(rt);

	FUNC4(rt->rt_expire == 0 || rt->rt_rmx.rmx_expire != 0);
	FUNC4(rt->rt_expire != 0 || rt->rt_rmx.rmx_expire == 0);

	ap->found++;
	timenow = FUNC6();

	/* If we're probing, flush out held packets upon probe expiration */
	if (ap->probing && (la->la_flags & LLINFO_PROBING) &&
	    la->la_probeexp <= timenow) {
		struct sockaddr_dl *sdl = FUNC3(rt->rt_gateway);
		if (sdl != NULL)
			sdl->sdl_alen = 0;
		(void) FUNC5(la);
		/*
		 * Enqueue work item to invoke callback for this route entry
		 */
		FUNC9(rt, NULL,
		    ROUTE_LLENTRY_UNREACH, NULL, TRUE);
	}

	/*
	 * The following is mostly being used to arm the timer
	 * again and for logging.
	 * qlen is used to re-arm the timer. Therefore, pure probe
	 * requests can be considered as 0 length packets
	 * contributing only to length but not to the size.
	 */
	ap->qlen += FUNC7(&la->la_holdq);
	ap->qlen += la->la_prbreq_cnt;
	ap->qsize += FUNC8(&la->la_holdq);

	if (rt->rt_expire == 0 || (rt->rt_flags & RTF_STATIC)) {
		ap->sticky++;
		/* ARP entry is permanent? */
		if (rt->rt_expire == 0) {
			FUNC2(rt);
			return;
		}
	}

	/* ARP entry hasn't expired and we're not draining? */
	if (!ap->draining && rt->rt_expire > timenow) {
		FUNC2(rt);
		ap->aging++;
		return;
	}

	if (rt->rt_refcnt > 0) {
		/*
		 * ARP entry has expired, with outstanding refcnt.
		 * If we're not draining, force ARP query to be
		 * generated next time this entry is used.
		 */
		if (!ap->draining && !ap->probing) {
			struct sockaddr_dl *sdl = FUNC3(rt->rt_gateway);
			if (sdl != NULL)
				sdl->sdl_alen = 0;
			la->la_asked = 0;
			rt->rt_flags &= ~RTF_REJECT;
		}
		FUNC2(rt);
	} else if (!(rt->rt_flags & RTF_STATIC) && !ap->probing) {
		/*
		 * ARP entry has no outstanding refcnt, and we're either
		 * draining or it has expired; delete it from the routing
		 * table.  Safe to drop rt_lock and use rt_key, since holding
		 * rnh_lock here prevents another thread from calling
		 * rt_setgate() on this route.
		 */
		FUNC2(rt);
		FUNC12(RTM_DELETE, FUNC10(rt), NULL,
		    FUNC11(rt), 0, NULL);
		arpstat.timeouts++;
		ap->killed++;
	} else {
		/* ARP entry is static; let it linger */
		FUNC2(rt);
	}
}