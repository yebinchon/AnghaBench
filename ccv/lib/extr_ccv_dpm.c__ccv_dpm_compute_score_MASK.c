#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_matrix_t ;
struct TYPE_25__ {TYPE_11__* w; } ;
struct TYPE_26__ {int count; TYPE_3__* part; TYPE_1__ root; } ;
typedef  TYPE_2__ ccv_dpm_root_classifier_t ;
struct TYPE_27__ {int y; int x; TYPE_11__* w; int /*<<< orphan*/  dyy; int /*<<< orphan*/  dxx; int /*<<< orphan*/  dy; int /*<<< orphan*/  dx; } ;
typedef  TYPE_3__ ccv_dpm_part_classifier_t ;
struct TYPE_28__ {int rows; int cols; } ;
typedef  TYPE_4__ ccv_dense_matrix_t ;
struct TYPE_24__ {int rows; int cols; } ;

/* Variables and functions */
 int CCV_32F ; 
 int CCV_C1 ; 
 int CCV_GSEDT ; 
 int CCV_NEGATIVE ; 
 int /*<<< orphan*/  CCV_NO_PADDING ; 
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_4__**,int /*<<< orphan*/ ,TYPE_4__**,int /*<<< orphan*/ ,TYPE_4__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_11__*,TYPE_4__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,TYPE_4__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC8(ccv_dpm_root_classifier_t* root_classifier, ccv_dense_matrix_t* hog, ccv_dense_matrix_t* hog2x, ccv_dense_matrix_t** _response, ccv_dense_matrix_t** part_feature, ccv_dense_matrix_t** dx, ccv_dense_matrix_t** dy)
{
	ccv_dense_matrix_t* response = 0;
	FUNC2(hog, root_classifier->root.w, &response, 0, CCV_NO_PADDING);
	ccv_dense_matrix_t* root_feature = 0;
	FUNC3(response, (ccv_matrix_t**)&root_feature, 0, 0);
	FUNC7(response);
	*_response = root_feature;
	if (hog2x == 0)
		return;
	FUNC6(root_feature);
	int rwh = (root_classifier->root.w->rows - 1) / 2, rww = (root_classifier->root.w->cols - 1) / 2;
	int rwh_1 = root_classifier->root.w->rows / 2, rww_1 = root_classifier->root.w->cols / 2;
	int i, x, y;
	for (i = 0; i < root_classifier->count; i++)
	{
		ccv_dpm_part_classifier_t* part = root_classifier->part + i;
		ccv_dense_matrix_t* response = 0;
		FUNC2(hog2x, part->w, &response, 0, CCV_NO_PADDING);
		ccv_dense_matrix_t* feature = 0;
		FUNC3(response, (ccv_matrix_t**)&feature, 0, 0);
		FUNC7(response);
		part_feature[i] = dx[i] = dy[i] = 0;
		FUNC1(feature, &part_feature[i], 0, &dx[i], 0, &dy[i], 0, part->dx, part->dy, part->dxx, part->dyy, CCV_NEGATIVE | CCV_GSEDT);
		FUNC7(feature);
		int pwh = (part->w->rows - 1) / 2, pww = (part->w->cols - 1) / 2;
		int offy = part->y + pwh - rwh * 2;
		int miny = pwh, maxy = part_feature[i]->rows - part->w->rows + pwh;
		int offx = part->x + pww - rww * 2;
		int minx = pww, maxx = part_feature[i]->cols - part->w->cols + pww;
		float* f_ptr = (float*)FUNC4(CCV_32F | CCV_C1, root_feature, rwh, 0, 0);
		for (y = rwh; y < root_feature->rows - rwh_1; y++)
		{
			int iy = FUNC0(y * 2 + offy, miny, maxy);
			for (x = rww; x < root_feature->cols - rww_1; x++)
			{
				int ix = FUNC0(x * 2 + offx, minx, maxx);
				f_ptr[x] -= FUNC5(CCV_32F | CCV_C1, part_feature[i], iy, ix, 0);
			}
			f_ptr += root_feature->cols;
		}
	}
}