#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsfmt_t ;
struct TYPE_9__ {scalar_t__ dsfmt; } ;
typedef  TYPE_1__ ccv_tld_t ;
typedef  int /*<<< orphan*/  ccv_dense_matrix_t ;
struct TYPE_10__ {int /*<<< orphan*/  rect; } ;
typedef  TYPE_2__ ccv_comp_t ;
struct TYPE_11__ {int rnum; } ;
typedef  TYPE_3__ ccv_array_t ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 double FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static float FUNC6(ccv_tld_t* tld, float nnc_thres, ccv_dense_matrix_t* ga, ccv_dense_matrix_t* sat, ccv_dense_matrix_t* sqsat, double var_thres, ccv_array_t* bad, int starter)
{
	int i;
	dsfmt_t* dsfmt = (dsfmt_t*)tld->dsfmt;
	for (i = starter; i < bad->rnum; i++)
	{
		ccv_comp_t* box = (ccv_comp_t*)FUNC3(bad, i);
		if (FUNC0(sat, sqsat, box->rect) > var_thres)
		{
			if (FUNC5(dsfmt) <= 0.1) // only pick 1 / 10 sample for this
			{
				ccv_dense_matrix_t* b = 0;
				FUNC1(tld, ga, &b, 0, box->rect);
				float c = FUNC2(tld, b, 0, 0, 0, 0);
				FUNC4(b);
				if (c > nnc_thres)
					nnc_thres = c;
			}
		}
	}
	return nnc_thres;
}