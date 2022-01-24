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
typedef  scalar_t__ u_int64_t ;
typedef  int /*<<< orphan*/  tmp ;
struct llinfo_arp {scalar_t__ la_lastused; int /*<<< orphan*/  la_rt; struct if_llreach* la_llreach; } ;
struct if_llreach {int lr_reqcnt; scalar_t__ lr_lastrcvd; int /*<<< orphan*/  lr_ifp; } ;
typedef  int int64_t ;
struct TYPE_2__ {int /*<<< orphan*/  sin_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int MAX_IPv4_STR_LEN ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ arp_llreach_base ; 
 int /*<<< orphan*/  FUNC2 (struct llinfo_arp*) ; 
 int arp_verbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct if_llreach*) ; 
 scalar_t__ FUNC5 (struct if_llreach*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline int
FUNC10(struct llinfo_arp *la)
{
	struct if_llreach *lr;
	const char *why = NULL;

	/* Nothing more to do if it's disabled; pretend it's reachable  */
	if (arp_llreach_base == 0)
		return (1);

	if ((lr = la->la_llreach) == NULL) {
		/*
		 * Link-layer reachability record isn't present for this
		 * ARP entry; pretend it's reachable and use it as is.
		 */
		return (1);
	} else if (FUNC4(lr)) {
		/*
		 * Record is present, it's not shared with other ARP
		 * entries and a packet has recently been received
		 * from the remote host; consider it reachable.
		 */
		if (lr->lr_reqcnt == 1)
			return (1);

		/* Prime it up, if this is the first time */
		if (la->la_lastused == 0) {
			FUNC1(la->la_llreach != NULL);
			FUNC2(la);
		}

		/*
		 * Record is present and shared with one or more ARP
		 * entries, and a packet has recently been received
		 * from the remote host.  Since it's shared by more
		 * than one IP addresses, we can't rely on the link-
		 * layer reachability alone; consider it reachable if
		 * this ARP entry has been used "recently."
		 */
		if (FUNC5(lr, la->la_lastused))
			return (1);

		why = "has alias(es) and hasn't been used in a while";
	} else {
		why = "haven't heard from it in a while";
	}

	if (arp_verbose > 1) {
		char tmp[MAX_IPv4_STR_LEN];
		u_int64_t now = FUNC8();

		FUNC7(LOG_DEBUG, "%s: ARP probe(s) needed for %s; "
		    "%s [lastused %lld, lastrcvd %lld] secs ago\n",
		    FUNC3(lr->lr_ifp), FUNC6(AF_INET,
		    &FUNC0(FUNC9(la->la_rt))->sin_addr, tmp, sizeof (tmp)), why,
		    (la->la_lastused ? (int64_t)(now - la->la_lastused) : -1),
		    (lr->lr_lastrcvd ? (int64_t)(now - lr->lr_lastrcvd) : -1));

	}
	return (0);
}