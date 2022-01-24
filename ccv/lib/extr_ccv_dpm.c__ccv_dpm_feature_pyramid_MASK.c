#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {double rows; double cols; } ;
typedef  TYPE_1__ ccv_dense_matrix_t ;

/* Variables and functions */
 int CCV_DPM_WINDOW_SIZE ; 
 int /*<<< orphan*/  CCV_INTER_AREA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__**,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__**,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 
 double FUNC5 (double,int) ; 

__attribute__((used)) static void FUNC6(ccv_dense_matrix_t* a, ccv_dense_matrix_t** pyr, int scale_upto, int interval)
{
	int next = interval + 1;
	double scale = FUNC5(2.0, 1.0 / (interval + 1.0));
	FUNC4(pyr, 0, (scale_upto + next * 2) * sizeof(ccv_dense_matrix_t*));
	pyr[next] = a;
	int i;
	for (i = 1; i <= interval; i++)
		FUNC2(pyr[next], &pyr[next + i], 0, (int)(pyr[next]->rows / FUNC5(scale, i)), (int)(pyr[next]->cols / FUNC5(scale, i)), CCV_INTER_AREA);
	for (i = next; i < scale_upto + next; i++)
		FUNC3(pyr[i], &pyr[i + next], 0, 0, 0);
	ccv_dense_matrix_t* hog;
	/* a more efficient way to generate up-scaled hog (using smaller size) */
	for (i = 0; i < next; i++)
	{
		hog = 0;
		FUNC0(pyr[i + next], &hog, 0, 9, CCV_DPM_WINDOW_SIZE / 2 /* this is */);
		pyr[i] = hog;
	}
	hog = 0;
	FUNC0(pyr[next], &hog, 0, 9, CCV_DPM_WINDOW_SIZE);
	pyr[next] = hog;
	for (i = next + 1; i < scale_upto + next * 2; i++)
	{
		hog = 0;
		FUNC0(pyr[i], &hog, 0, 9, CCV_DPM_WINDOW_SIZE);
		FUNC1(pyr[i]);
		pyr[i] = hog;
	}
}