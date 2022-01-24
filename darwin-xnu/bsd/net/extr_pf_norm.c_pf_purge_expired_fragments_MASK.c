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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ u_int32_t ;
struct pf_fragment {scalar_t__ fr_timeout; int fr_af; int /*<<< orphan*/  fr_id6; int /*<<< orphan*/  fr_id; } ;
struct TYPE_2__ {scalar_t__* timeout; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int FUNC0 (struct pf_fragment*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t PFTM_FRAG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct pf_fragment* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct pf_fragment*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pf_cachequeue ; 
 TYPE_1__ pf_default_rule ; 
 int /*<<< orphan*/  pf_fragqueue ; 
 int /*<<< orphan*/  FUNC8 (struct pf_fragment*) ; 
 scalar_t__ FUNC9 () ; 

void
FUNC10(void)
{
	struct pf_fragment *frag;
	u_int32_t expire = FUNC9() -
	    pf_default_rule.timeout[PFTM_FRAG];

	while ((frag = FUNC3(&pf_fragqueue, pf_fragqueue)) != NULL) {
		FUNC4(FUNC0(frag));
		if (frag->fr_timeout > expire)
			break;

		switch (frag->fr_af) {
		case AF_INET:
		      FUNC1(("expiring IPv4 %d(0x%llx) from queue.\n",
			  FUNC7(frag->fr_id),
			  (uint64_t)FUNC5(frag)));
		      break;
		case AF_INET6:
		      FUNC1(("expiring IPv6 %d(0x%llx) from queue.\n",
			  FUNC6(frag->fr_id6),
			  (uint64_t)FUNC5(frag)));
		      break;
		default:
		      FUNC4(0 && "only IPv4 and IPv6 supported");
		      break;
		}
		FUNC8(frag);
	}

	while ((frag = FUNC3(&pf_cachequeue, pf_cachequeue)) != NULL) {
		FUNC4(!FUNC0(frag));
		if (frag->fr_timeout > expire)
			break;

		switch (frag->fr_af) {
		case AF_INET:
		      FUNC1(("expiring IPv4 %d(0x%llx) from cache.\n",
			  FUNC7(frag->fr_id),
			  (uint64_t)FUNC5(frag)));
		      break;
		case AF_INET6:
		      FUNC1(("expiring IPv6 %d(0x%llx) from cache.\n",
			  FUNC6(frag->fr_id6),
			  (uint64_t)FUNC5(frag)));
		      break;
		default:
		      FUNC4(0 && "only IPv4 and IPv6 supported");
		      break;
		}
		FUNC8(frag);
		FUNC4(FUNC2(&pf_cachequeue) ||
		    FUNC3(&pf_cachequeue, pf_cachequeue) != frag);
	}
}