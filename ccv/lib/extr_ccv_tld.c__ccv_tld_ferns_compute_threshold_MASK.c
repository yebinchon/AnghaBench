#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {int structs; } ;
typedef  TYPE_1__ ccv_ferns_t ;
typedef  int /*<<< orphan*/  ccv_dense_matrix_t ;
struct TYPE_11__ {int /*<<< orphan*/  rect; } ;
typedef  TYPE_2__ ccv_comp_t ;
struct TYPE_12__ {int rnum; } ;
typedef  TYPE_3__ ccv_array_t ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int) ; 
 float FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static float FUNC5(ccv_ferns_t* ferns, float ferns_thres, ccv_dense_matrix_t* ga, ccv_dense_matrix_t* sat, ccv_dense_matrix_t* sqsat, double var_thres, ccv_array_t* bad, int starter)
{
	int i;
	uint32_t* fern = (uint32_t*)FUNC2(sizeof(uint32_t) * ferns->structs);
	for (i = starter; i < bad->rnum; i++)
	{
		ccv_comp_t* box = (ccv_comp_t*)FUNC3(bad, i);
		if (FUNC0(sat, sqsat, box->rect) > var_thres)
		{
			FUNC1(ferns, ga, *box, fern, 0, 0, 0, 0);
			float c = FUNC4(ferns, fern);
			if (c > ferns_thres)
				ferns_thres = c;
		}
	}
	return ferns_thres;
}