#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int width; int height; } ;
struct TYPE_23__ {int dx; int dy; scalar_t__ neighbors; struct TYPE_23__* letters; TYPE_2__ rect; TYPE_5__* right; TYPE_5__* left; } ;
typedef  TYPE_3__ ccv_textline_t ;
struct TYPE_24__ {double thickness_ratio; double height_ratio; int intensity_thresh; int distance_ratio; int intersect_ratio; scalar_t__ letter_thresh; int elongate_ratio; } ;
typedef  TYPE_4__ ccv_swt_param_t ;
struct TYPE_21__ {double height; int x; int width; int y; } ;
struct TYPE_25__ {double thickness; int intensity; TYPE_1__ rect; } ;
typedef  TYPE_5__ ccv_letter_t ;
typedef  TYPE_3__ ccv_letter_pair_t ;
struct TYPE_26__ {int rnum; } ;
typedef  TYPE_7__ ccv_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  _ccv_in_textline ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_5__*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 scalar_t__ FUNC5 (TYPE_7__*,int) ; 
 int FUNC6 (TYPE_7__*,TYPE_7__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,TYPE_3__*) ; 
 int FUNC9 (int,int) ; 
 int FUNC10 (int,int) ; 

__attribute__((used)) static ccv_array_t* FUNC11(ccv_array_t* letters, ccv_swt_param_t params)
{
	int i, j;
	ccv_array_t* pairs = FUNC7(sizeof(ccv_letter_pair_t), letters->rnum, 0);
	double thickness_ratio_inv = 1.0 / params.thickness_ratio;
	double height_ratio_inv = 1.0 / params.height_ratio;
	for (i = 0; i < letters->rnum - 1; i++)
	{
		ccv_letter_t* li = (ccv_letter_t*)FUNC5(letters, i);
		for (j = i + 1; j < letters->rnum; j++)
		{
			ccv_letter_t* lj = (ccv_letter_t*)FUNC5(letters, j);
			double ratio = (double)li->thickness / lj->thickness;
			if (ratio > params.thickness_ratio || ratio < thickness_ratio_inv)
				continue;
			ratio = (double)li->rect.height / lj->rect.height;
			if (ratio > params.height_ratio || ratio < height_ratio_inv)
				continue;
			if (FUNC1(li->intensity - lj->intensity) > params.intensity_thresh)
				continue;
			int dx = li->rect.x - lj->rect.x + (li->rect.width - lj->rect.width) / 2;
			int dy = li->rect.y - lj->rect.y + (li->rect.height - lj->rect.height) / 2;
			if (FUNC1(dx) > params.distance_ratio * FUNC9(li->rect.width, lj->rect.width))
				continue;
			int oy = FUNC10(li->rect.y + li->rect.height, lj->rect.y + lj->rect.height) - FUNC9(li->rect.y, lj->rect.y);
			if (oy * params.intersect_ratio < FUNC10(li->rect.height, lj->rect.height))
				continue;
			ccv_letter_pair_t pair = { .left = li, .right = lj, .dx = dx, .dy = dy };
			FUNC8(pairs, &pair);
		}
	}
	ccv_array_t* idx = 0;
	int nchains = FUNC6(pairs, &idx, _ccv_in_textline, 0);
	ccv_textline_t* chain = (ccv_textline_t*)FUNC3(nchains * sizeof(ccv_textline_t));
	for (i = 0; i < nchains; i++)
		chain[i].neighbors = 0;
	for (i = 0; i < pairs->rnum; i++)
	{
		j = *(int*)FUNC5(idx, i);
		FUNC0(chain + j,((ccv_letter_pair_t*)FUNC5(pairs, i))->left);
		FUNC0(chain + j, ((ccv_letter_pair_t*)FUNC5(pairs, i))->right);
	}
	FUNC4(idx);
	FUNC4(pairs);
	ccv_array_t* regions = FUNC7(sizeof(ccv_textline_t), 5, 0);
	for (i = 0; i < nchains; i++)
		if (chain[i].neighbors >= params.letter_thresh && chain[i].rect.width > chain[i].rect.height * params.elongate_ratio)
			FUNC8(regions, chain + i);
		else if (chain[i].neighbors > 0)
			FUNC2(chain[i].letters);
	FUNC2(chain);
	return regions;
}