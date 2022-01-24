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
struct tcq_if {int tif_maxpri; int /*<<< orphan*/  tif_ifq; struct tcq_class** tif_classes; } ;
struct tcq_class {int /*<<< orphan*/  cl_q; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tcq_if*,struct tcq_class*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC5(struct tcq_if *tif)
{
	struct tcq_class *cl;
	int pri;

	FUNC1(tif->tif_ifq);

	for (pri = 0; pri <= tif->tif_maxpri; pri++) {
		if ((cl = tif->tif_classes[pri]) != NULL && !FUNC3(&cl->cl_q))
			FUNC4(tif, cl, 0, NULL, NULL);
	}
	FUNC2(FUNC0(tif->tif_ifq) == 0);
}