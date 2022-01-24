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
typedef  int /*<<< orphan*/  u_int32_t ;
struct tcq_if {int /*<<< orphan*/ ** tif_classes; int /*<<< orphan*/  tif_ifq; } ;
struct tcq_class {int dummy; } ;
typedef  int /*<<< orphan*/  classq_pkt_type_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TCQ_MAXPRI ; 
 struct tcq_class* FUNC1 (struct tcq_if*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct tcq_if*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct tcq_if *tif, int priority, u_int32_t qlimit,
    int flags, u_int32_t qid, struct tcq_class **clp, classq_pkt_type_t ptype)
{
	struct tcq_class *cl;

	FUNC0(tif->tif_ifq);

	/* check parameters */
	if (priority >= TCQ_MAXPRI)
		return (EINVAL);
	if (tif->tif_classes[priority] != NULL)
		return (EBUSY);
	if (FUNC2(tif, qid) != NULL)
		return (EBUSY);

	cl = FUNC1(tif, priority, qlimit, flags, qid, ptype);
	if (cl == NULL)
		return (ENOMEM);

	if (clp != NULL)
		*clp = cl;

	return (0);
}