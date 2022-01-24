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
struct tcq_if {int /*<<< orphan*/  tif_ifq; } ;
struct tcq_class {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tcq_if*,struct tcq_class*) ; 
 struct tcq_class* FUNC2 (struct tcq_if*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct tcq_if *tif, u_int32_t qid)
{
	struct tcq_class *cl;

	FUNC0(tif->tif_ifq);

	if ((cl = FUNC2(tif, qid)) == NULL)
		return (EINVAL);

	return (FUNC1(tif, cl));
}