#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_48__   TYPE_8__ ;
typedef  struct TYPE_47__   TYPE_6__ ;
typedef  struct TYPE_46__   TYPE_4__ ;
typedef  struct TYPE_45__   TYPE_3__ ;
typedef  struct TYPE_44__   TYPE_30__ ;
typedef  struct TYPE_43__   TYPE_2__ ;
typedef  struct TYPE_42__   TYPE_26__ ;
typedef  struct TYPE_41__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  sfmt_t ;
typedef  int /*<<< orphan*/  dsfmt_t ;
struct TYPE_44__ {float nnc_collect; int track_deform; int rotation; scalar_t__ exclude_overlap; int /*<<< orphan*/  track_deform_shift; int /*<<< orphan*/  track_deform_scale; int /*<<< orphan*/  track_deform_angle; } ;
struct TYPE_42__ {float width; float height; } ;
struct TYPE_41__ {double var_thres; int count; scalar_t__ ferns_thres; TYPE_4__** sv; TYPE_30__ params; TYPE_4__* top; TYPE_8__* ferns; scalar_t__ fern_buffer; scalar_t__ dsfmt; scalar_t__ sfmt; TYPE_26__ patch; } ;
typedef  TYPE_1__ ccv_tld_t ;
struct TYPE_43__ {int /*<<< orphan*/  rows; int /*<<< orphan*/  cols; } ;
typedef  TYPE_2__ ccv_dense_matrix_t ;
struct TYPE_47__ {int width; int height; float x; float y; } ;
struct TYPE_45__ {int neighbors; TYPE_6__ rect; } ;
typedef  TYPE_3__ ccv_comp_t ;
struct TYPE_46__ {int rnum; int rsize; } ;
typedef  TYPE_4__ ccv_array_t ;
struct TYPE_48__ {int structs; scalar_t__ threshold; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_2__*,TYPE_6__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,TYPE_2__*,TYPE_3__,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,TYPE_2__**,int /*<<< orphan*/ ,TYPE_6__) ; 
 TYPE_3__ FUNC3 (int /*<<< orphan*/ ,TYPE_26__,TYPE_6__,int,TYPE_4__**,TYPE_4__**,TYPE_30__) ; 
 scalar_t__ FUNC4 (TYPE_6__,TYPE_6__) ; 
 float FUNC5 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int* FUNC11 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*,int*,int,int) ; 
 scalar_t__ FUNC14 (TYPE_8__*,int*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 TYPE_6__ FUNC16 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (int*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int*,int,int) ; 
 float FUNC21 (float) ; 

__attribute__((used)) static int FUNC22(ccv_tld_t* tld, ccv_dense_matrix_t* ga, ccv_dense_matrix_t* sat, ccv_dense_matrix_t* sqsat, ccv_comp_t dd)
{
	ccv_dense_matrix_t* b = 0;
	float scale = FUNC21((float)(dd.rect.width * dd.rect.height) / (tld->patch.width * tld->patch.height));
	// regularize the rect to conform patch's aspect ratio
	dd.rect = FUNC16((int)(dd.rect.x + (dd.rect.width - tld->patch.width * scale) + 0.5),
					   (int)(dd.rect.y + (dd.rect.height - tld->patch.height * scale) + 0.5),
					   (int)(tld->patch.width * scale + 0.5),
					   (int)(tld->patch.height * scale + 0.5));
	FUNC2(tld, ga, &b, 0, dd.rect);
	double variance = FUNC18(b);
	int anyp, anyn;
	float c = FUNC5(tld, b, 0, 0, &anyp, &anyn);
	FUNC15(b);
	if (c > tld->params.nnc_collect && !anyn && variance > tld->var_thres)
	{
		ccv_array_t* good = 0;
		ccv_array_t* bad = 0;
		ccv_comp_t best_box = FUNC3(FUNC17(ga->cols, ga->rows), tld->patch, dd.rect, 10, &good, &bad, tld->params);
		int i, j, k = good->rnum;
		// inflate good boxes to take into account deformations
		for (i = 0; i < tld->params.track_deform; i++)
			for (j = 0; j < k; j++)
			{
				// needs to get it out first, otherwise the pointer may be invalid
				// soon (when we realloc the array in push).
				ccv_comp_t box = *(ccv_comp_t*)FUNC11(good, j);
				FUNC12(good, &box);
			}
		sfmt_t* sfmt = (sfmt_t*)tld->sfmt;
		FUNC20(sfmt, FUNC11(bad, 0), bad->rnum, bad->rsize);
		int badex = (bad->rnum * 4 + 3) / 6; // only use 2 / 3 bad example for quick learn
		int* idx = (int*)FUNC9(sizeof(int) * (badex + good->rnum));
		for (i = 0; i < badex + good->rnum; i++)
			idx[i] = i;
		FUNC20(sfmt, idx, badex + good->rnum, sizeof(int));
		dsfmt_t* dsfmt = (dsfmt_t*)tld->dsfmt;
		uint32_t* fern = (uint32_t*)FUNC9(sizeof(uint32_t) * tld->ferns->structs * (badex + 1));
		int r0 = tld->count % (tld->params.rotation + 1), r1 = tld->params.rotation + 1;
		// train the fern classifier
		for (i = 0; i < 2; i++) // run it twice to take into account the cases we missed when warm up
		{
			uint32_t* pfern = fern + tld->ferns->structs;
			for (j = 0; j < badex + good->rnum; j++)
			{
				k = idx[j];
				if (k < badex)
				{
					ccv_comp_t *box = (ccv_comp_t*)FUNC11(bad, k);
					if (i == 0)
					{
						FUNC7(box->neighbors >= 0 && box->neighbors < best_box.neighbors);
						if (box->neighbors % r1 == r0 &&
							FUNC0(sat, sqsat, box->rect) > tld->var_thres)
						{
							// put them in order for faster access the next round
							FUNC19(pfern, tld->fern_buffer + box->neighbors * tld->ferns->structs, sizeof(uint32_t) * tld->ferns->structs);
							// fix the thresholding for negative
							if (FUNC14(tld->ferns, pfern) >= tld->ferns->threshold)
								FUNC13(tld->ferns, pfern, 0, 2); // just feel like to use 2
							pfern += tld->ferns->structs;
						} else
							box->neighbors = -1;
					} else {
						if (box->neighbors < 0)
							continue;
						if (FUNC14(tld->ferns, pfern) >= tld->ferns->threshold)
							FUNC13(tld->ferns, pfern, 0, 2); // just feel like to use 2
						pfern += tld->ferns->structs;
					}
				} else {
					ccv_comp_t *box = (ccv_comp_t*)FUNC11(good, k - badex);
					FUNC1(tld->ferns, ga, *box, fern, dsfmt, tld->params.track_deform_angle, tld->params.track_deform_scale, tld->params.track_deform_shift);
					// fix the thresholding for positive
					if (FUNC14(tld->ferns, fern) <= tld->ferns_thres)
						FUNC13(tld->ferns, fern, 1, 1);
				}
			}
		}
		FUNC8(fern);
		FUNC10(bad);
		FUNC10(good);
		FUNC8(idx);
		// train the nearest-neighbor classifier
		ccv_dense_matrix_t* b = 0;
		FUNC2(tld, ga, &b, 0, best_box.rect);
		if (FUNC6(tld, b, 1) != 0)
			FUNC15(b);
		for (i = 0; i < tld->top->rnum; i++)
		{
			ccv_comp_t* box = (ccv_comp_t*)FUNC11(tld->top, i);
			if (FUNC4(box->rect, best_box.rect) < tld->params.exclude_overlap)
			{
				ccv_dense_matrix_t* b = 0;
				FUNC2(tld, ga, &b, 0, box->rect);
				if (FUNC6(tld, b, 0) != 0)
					FUNC15(b);
			}
		}
		// shuffle them
		FUNC20(sfmt, FUNC11(tld->sv[0], 0), tld->sv[0]->rnum, sizeof(ccv_dense_matrix_t*));
		FUNC20(sfmt, FUNC11(tld->sv[1], 0), tld->sv[1]->rnum, sizeof(ccv_dense_matrix_t*));
		return 0;
	}
	return -1;
}