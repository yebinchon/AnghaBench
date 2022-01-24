#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int /*<<< orphan*/  if_snd; } ;
struct TYPE_5__ {int /*<<< orphan*/  fqs_fclist; int /*<<< orphan*/  fqs_pkt_droplimit; int /*<<< orphan*/  fqs_update_interval; int /*<<< orphan*/  fqs_target_qdelay; int /*<<< orphan*/  fqs_ptype; int /*<<< orphan*/ * fqs_ifq; } ;
typedef  TYPE_1__ fq_if_t ;
typedef  int /*<<< orphan*/  classq_pkt_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fq_if_size ; 
 int /*<<< orphan*/  fq_if_zone ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 

fq_if_t *
FUNC6(struct ifnet *ifp, classq_pkt_type_t ptype)
{
	fq_if_t *fqs;
	fqs = FUNC5(fq_if_zone);
	if (fqs == NULL)
		return (NULL);

	FUNC2(fqs, fq_if_size);
	fqs->fqs_ifq = &ifp->if_snd;
	fqs->fqs_ptype = ptype;

	/* Calculate target queue delay */
	FUNC3(ifp, &fqs->fqs_target_qdelay);

	/* Calculate update interval */
	FUNC4(&fqs->fqs_update_interval);

	/* Configure packet drop limit across all queues */
	fqs->fqs_pkt_droplimit = FUNC0(&ifp->if_snd);
	FUNC1(&fqs->fqs_fclist);
	return (fqs);
}