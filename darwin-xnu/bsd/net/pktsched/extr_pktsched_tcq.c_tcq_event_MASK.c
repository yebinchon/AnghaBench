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
struct tcq_if {int tif_maxpri; struct tcq_class** tif_classes; int /*<<< orphan*/  tif_ifq; } ;
struct tcq_class {int dummy; } ;
typedef  int /*<<< orphan*/  cqev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tcq_if*,struct tcq_class*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct tcq_if *tif, cqev_t ev)
{
	struct tcq_class *cl;
	int pri;

	FUNC0(tif->tif_ifq);

	for (pri = 0; pri <= tif->tif_maxpri; pri++)
		if ((cl = tif->tif_classes[pri]) != NULL)
			FUNC1(tif, cl, ev);
}