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
struct ifbreq {int ifbr_ifsflags; int /*<<< orphan*/  ifbr_ifsname; } ;
struct bstp_port {int dummy; } ;
struct bridge_softc {int dummy; } ;
struct bridge_iflist {int bif_ifflags; struct bstp_port bif_stp; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int IFBIFMASK ; 
 int IFBIF_BSTP_AUTOEDGE ; 
 int IFBIF_BSTP_AUTOPTP ; 
 int IFBIF_BSTP_EDGE ; 
 int IFBIF_BSTP_PTP ; 
 int IFBIF_SPAN ; 
 int IFBIF_STP ; 
 int /*<<< orphan*/  FUNC0 (struct bridge_softc*) ; 
 struct bridge_iflist* FUNC1 (struct bridge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bstp_port*) ; 
 int FUNC3 (struct bstp_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct bstp_port*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bstp_port*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bstp_port*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bstp_port*,int) ; 

__attribute__((used)) static int
FUNC8(struct bridge_softc *sc, void *arg)
{
	struct ifbreq *req = arg;
	struct bridge_iflist *bif;
#if BRIDGESTP
	struct bstp_port *bp;
	int error;
#endif /* BRIDGESTP */

	if (!FUNC0(sc)) {
		return (EINVAL);
	}

	bif = FUNC1(sc, req->ifbr_ifsname);
	if (bif == NULL)
		return (ENOENT);

	if (req->ifbr_ifsflags & IFBIF_SPAN)
		/* SPAN is readonly */
		return (EINVAL);


#if BRIDGESTP
	if (req->ifbr_ifsflags & IFBIF_STP) {
		if ((bif->bif_ifflags & IFBIF_STP) == 0) {
			error = bstp_enable(&bif->bif_stp);
			if (error)
				return (error);
		}
	} else {
		if ((bif->bif_ifflags & IFBIF_STP) != 0)
			bstp_disable(&bif->bif_stp);
	}

	/* Pass on STP flags */
	bp = &bif->bif_stp;
	bstp_set_edge(bp, req->ifbr_ifsflags & IFBIF_BSTP_EDGE ? 1 : 0);
	bstp_set_autoedge(bp, req->ifbr_ifsflags & IFBIF_BSTP_AUTOEDGE ? 1 : 0);
	bstp_set_ptp(bp, req->ifbr_ifsflags & IFBIF_BSTP_PTP ? 1 : 0);
	bstp_set_autoptp(bp, req->ifbr_ifsflags & IFBIF_BSTP_AUTOPTP ? 1 : 0);
#else /* !BRIDGESTP */
	if (req->ifbr_ifsflags & IFBIF_STP)
		return (EOPNOTSUPP);
#endif /* !BRIDGESTP */

	/* Save the bits relating to the bridge */
	bif->bif_ifflags = req->ifbr_ifsflags & IFBIFMASK;


	return (0);
}