#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ferns; TYPE_3__* top; TYPE_3__** sv; struct TYPE_6__* sfmt; struct TYPE_6__* dsfmt; } ;
typedef  TYPE_1__ ccv_tld_t ;
typedef  int /*<<< orphan*/  ccv_dense_matrix_t ;
struct TYPE_7__ {int rnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(ccv_tld_t* tld)
{
	int i;
	FUNC0(tld->dsfmt);
	FUNC0(tld->sfmt);
	for (i = 0; i < tld->sv[0]->rnum; i++)
		FUNC4(*(ccv_dense_matrix_t**)FUNC2(tld->sv[0], i));
	FUNC1(tld->sv[0]);
	for (i = 0; i < tld->sv[1]->rnum; i++)
		FUNC4(*(ccv_dense_matrix_t**)FUNC2(tld->sv[1], i));
	FUNC1(tld->sv[1]);
	FUNC1(tld->top);
	FUNC3(tld->ferns);
	FUNC0(tld);
}