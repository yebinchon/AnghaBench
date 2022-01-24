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
struct ip_moptions {int imo_num_memberships; scalar_t__ imo_max_memberships; TYPE_1__** imo_membership; struct in_mfilter* imo_mfilters; int /*<<< orphan*/  imo_multicast_loop; int /*<<< orphan*/  imo_multicast_ttl; int /*<<< orphan*/  imo_multicast_vif; int /*<<< orphan*/  imo_multicast_ifp; } ;
struct inpcb {int dummy; } ;
struct in_mfilter {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  inm_ifp; int /*<<< orphan*/  inm_addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct ip_moptions*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_moptions*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_moptions*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct in_mfilter*) ; 
 int /*<<< orphan*/  FUNC6 (struct in_mfilter*) ; 
 int FUNC7 (struct ip_moptions*,scalar_t__) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct in_mfilter*) ; 
 struct ip_moptions* FUNC10 (struct inpcb*) ; 

int
FUNC11(struct inpcb *from_inp, struct inpcb *to_inp)
{
	int i, err = 0;
	struct ip_moptions *from;
	struct ip_moptions *to;

	from = FUNC10(from_inp);
	if (from == NULL)
		return (ENOMEM); 

	to = FUNC10(to_inp);
	if (to == NULL) {
		FUNC1(from);
		return (ENOMEM);
	}

	FUNC0(from);
	FUNC0(to);

        to->imo_multicast_ifp = from->imo_multicast_ifp;
        to->imo_multicast_vif = from->imo_multicast_vif;
        to->imo_multicast_ttl = from->imo_multicast_ttl;
        to->imo_multicast_loop = from->imo_multicast_loop;

	/*
	 * We're cloning, so drop any existing memberships and source
	 * filters on the destination ip_moptions.
	 */
	for (i = 0; i < to->imo_num_memberships; ++i) {
		struct in_mfilter *imf;

		imf = to->imo_mfilters ? &to->imo_mfilters[i] : NULL;
		if (imf != NULL)
			FUNC5(imf);

		(void) FUNC9(to->imo_membership[i], imf);

		if (imf != NULL)
			FUNC6(imf);

		FUNC3(to->imo_membership[i]);
		to->imo_membership[i] = NULL;
	}
	to->imo_num_memberships = 0;

	FUNC4(to->imo_max_memberships != 0 && from->imo_max_memberships != 0);
	if (to->imo_max_memberships < from->imo_max_memberships) {
		/*
		 * Ensure source and destination ip_moptions memberships
		 * and source filters arrays are at least equal in size.
		 */
		err = FUNC7(to, from->imo_max_memberships);
		if (err != 0)
			goto done;
	}
	FUNC4(to->imo_max_memberships >= from->imo_max_memberships);

	/*
	 * Source filtering doesn't apply to OpenTransport socket,
	 * so simply hold additional reference count per membership.
	 */
	for (i = 0; i < from->imo_num_memberships; i++) {
		to->imo_membership[i] = 
			FUNC8(&from->imo_membership[i]->inm_addr,
						from->imo_membership[i]->inm_ifp);
		if (to->imo_membership[i] == NULL)
			break;
		to->imo_num_memberships++;
        }
	FUNC4(to->imo_num_memberships == from->imo_num_memberships);

done:
	FUNC2(to);
	FUNC1(to);
	FUNC2(from);
	FUNC1(from);

	return (err);
}