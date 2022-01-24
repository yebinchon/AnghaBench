#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int height; int width; } ;
typedef  TYPE_3__ ccv_size_t ;
typedef  int /*<<< orphan*/  ccv_matrix_t ;
struct TYPE_22__ {double* f32; } ;
struct TYPE_24__ {int rows; int cols; TYPE_2__ data; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ ccv_dense_matrix_t ;
struct TYPE_21__ {int /*<<< orphan*/  filename; } ;
struct TYPE_25__ {int type; TYPE_1__ file; TYPE_4__* matrix; } ;
typedef  TYPE_5__ ccv_categorized_t ;
struct TYPE_26__ {int rnum; } ;
typedef  TYPE_6__ ccv_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  CCV_32F ; 
 int CCV_64F ; 
 int CCV_C1 ; 
#define  CCV_CATEGORIZED_DENSE_MATRIX 129 
#define  CCV_CATEGORIZED_FILE 128 
 int /*<<< orphan*/  CCV_CLI_ERROR ; 
 int /*<<< orphan*/  CCV_CLI_INFO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CCV_IO_ANY_FILE ; 
 int CCV_IO_RGB_COLOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_6__*,int) ; 
 TYPE_4__ FUNC6 (int,int,int,double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_4__**,TYPE_4__**,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_4__**,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (double*,int /*<<< orphan*/ ,int) ; 

void FUNC13(ccv_array_t* categorizeds, ccv_dense_matrix_t* mean_activity, ccv_size_t dim, int channels, ccv_dense_matrix_t** eigenvectors, ccv_dense_matrix_t** eigenvalues)
{
	FUNC4(channels == 3); // this function cannot handle anything other than 3x3 covariance matrix
	double* mean_value = (double*)FUNC3(sizeof(double) * channels);
	FUNC12(mean_value, 0, sizeof(double) * channels);
	FUNC4(FUNC0(mean_activity->type) == channels);
	FUNC4(mean_activity->rows == dim.height);
	FUNC4(mean_activity->cols == dim.width);
	int i, j, k, c, count = 0;
	for (i = 0; i < dim.height * dim.width; i++)
		for (k = 0; k < channels; k++)
			mean_value[k] += mean_activity->data.f32[i * channels + k];
	for (i = 0; i < channels; i++)
		mean_value[i] = mean_value[i] / (dim.height * dim.width);
	double* covariance = (double*)FUNC3(sizeof(double) * channels * channels);
	FUNC12(covariance, 0, sizeof(double) * channels * channels);
	for (c = 0; c < categorizeds->rnum; c++)
	{
		if (c % 23 == 0 || c == categorizeds->rnum - 1)
			FUNC1(CCV_CLI_INFO, " - compute covariance matrix for data augmentation (color gain) %d / %d", c + 1, categorizeds->rnum);
		ccv_categorized_t* categorized = (ccv_categorized_t*)FUNC5(categorizeds, c);
		ccv_dense_matrix_t* image = 0;
		switch (categorized->type)
		{
			case CCV_CATEGORIZED_DENSE_MATRIX:
				image = categorized->matrix;
				break;
			case CCV_CATEGORIZED_FILE:
				FUNC9(categorized->file.filename, &image, CCV_IO_ANY_FILE | CCV_IO_RGB_COLOR);
				break;
		}
		if (!image)
		{
			FUNC2(CCV_CLI_ERROR, "cannot load %s.\n", categorized->file.filename);
			continue;
		}
		ccv_dense_matrix_t* patch = 0;
		if (image->cols != dim.width || image->rows != dim.height)
		{
			int x = (image->cols - dim.width + 1) / 2;
			int y = (image->rows - dim.height + 1) / 2;
			FUNC4(x == 0 || y == 0);
			FUNC11(image, (ccv_matrix_t**)&patch, CCV_32F, y, x, dim.height, dim.width);
		} else
			FUNC10(image, (ccv_matrix_t**)&patch, CCV_32F, 0, 0); // converting to 32f
		if (categorized->type != CCV_CATEGORIZED_DENSE_MATRIX)
			FUNC8(image);
		for (i = 0; i < dim.width * dim.height; i++)
			for (j = 0; j < channels; j++)
				for (k = j; k < channels; k++)
					covariance[j * channels + k] += (patch->data.f32[i * channels + j] - mean_value[j]) * (patch->data.f32[i * channels + k] - mean_value[k]);
		++count;
		FUNC8(patch);
	}
	for (i = 0; i < channels; i++)
		for (j = 0; j < i; j++)
			covariance[i * channels + j] = covariance[j * channels + i];
	double p = 1.0 / ((double)count * dim.height * dim.width);
	for (i = 0; i < channels; i++)
		for (j = 0; j < channels; j++)
			covariance[i * channels + j] *= p; // scale down
	ccv_dense_matrix_t covm = FUNC6(3, 3, CCV_64F | CCV_C1, covariance, 0);
	FUNC7(&covm, eigenvectors, eigenvalues, CCV_64F, 1e-8);
	FUNC2(CCV_CLI_INFO, "\n");
}