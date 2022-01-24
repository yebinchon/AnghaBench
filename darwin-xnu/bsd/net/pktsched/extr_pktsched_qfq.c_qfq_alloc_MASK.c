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
struct qfq_if {int qif_maxclasses; int /*<<< orphan*/ * qif_groups; int /*<<< orphan*/ * qif_class_tbl; int /*<<< orphan*/  qif_maxslots; int /*<<< orphan*/ * qif_ifq; } ;
struct qfq_group {int dummy; } ;
struct qfq_class {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int IFCQ_SC_MAX ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int QFQ_MAX_INDEX ; 
 int /*<<< orphan*/  QFQ_MAX_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qfq_if*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pktsched_verbose ; 
 int /*<<< orphan*/  qfq_size ; 
 int /*<<< orphan*/  FUNC5 (struct qfq_if*) ; 
 int /*<<< orphan*/  qfq_zone ; 
 struct qfq_if* FUNC6 (int /*<<< orphan*/ ) ; 
 struct qfq_if* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct qfq_if*) ; 

struct qfq_if *
FUNC9(struct ifnet *ifp, int how)
{
	struct qfq_if	*qif;

	qif = (how == M_WAITOK) ? FUNC6(qfq_zone) : FUNC7(qfq_zone);
	if (qif == NULL)
		return (NULL);

	FUNC2(qif, qfq_size);
	qif->qif_ifq = &ifp->if_snd;

	qif->qif_maxclasses = IFCQ_SC_MAX;
	/*
	 * TODO: adi@apple.com
	 *
	 * Ideally I would like to have the following
	 * but QFQ needs further modifications.
	 *
	 *	qif->qif_maxslots = IFCQ_SC_MAX;
	 */
	qif->qif_maxslots = QFQ_MAX_SLOTS;

	if ((qif->qif_class_tbl = FUNC1(sizeof (struct qfq_class *) *
	    qif->qif_maxclasses, M_DEVBUF, M_WAITOK|M_ZERO)) == NULL) {
		FUNC4(LOG_ERR, "%s: %s unable to allocate class table array\n",
		    FUNC3(ifp), FUNC5(qif));
		goto error;
	}

	if ((qif->qif_groups = FUNC1(sizeof (struct qfq_group *) *
	    (QFQ_MAX_INDEX + 1), M_DEVBUF, M_WAITOK|M_ZERO)) == NULL) {
		FUNC4(LOG_ERR, "%s: %s unable to allocate group array\n",
		    FUNC3(ifp), FUNC5(qif));
		goto error;
	}

	if (pktsched_verbose) {
		FUNC4(LOG_DEBUG, "%s: %s scheduler allocated\n",
		    FUNC3(ifp), FUNC5(qif));
	}

	return (qif);

error:
	if (qif->qif_class_tbl != NULL) {
		FUNC0(qif->qif_class_tbl, M_DEVBUF);
		qif->qif_class_tbl = NULL;
	}
	if (qif->qif_groups != NULL) {
		FUNC0(qif->qif_groups, M_DEVBUF);
		qif->qif_groups = NULL;
	}
	FUNC8(qfq_zone, qif);

	return (NULL);
}