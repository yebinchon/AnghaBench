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
struct TYPE_23__ {scalar_t__ height; scalar_t__ width; } ;
typedef  TYPE_3__ ccv_size_t ;
typedef  int /*<<< orphan*/  ccv_matrix_t ;
struct TYPE_22__ {double* f64; float* f32; } ;
struct TYPE_24__ {scalar_t__ cols; scalar_t__ rows; TYPE_2__ data; } ;
typedef  TYPE_4__ ccv_dense_matrix_t ;
struct TYPE_21__ {int /*<<< orphan*/  filename; } ;
struct TYPE_25__ {int type; TYPE_1__ file; TYPE_4__* matrix; } ;
typedef  TYPE_5__ ccv_categorized_t ;
struct TYPE_26__ {int rnum; } ;
typedef  TYPE_6__ ccv_array_t ;

/* Variables and functions */
 int CCV_32F ; 
 int CCV_64F ; 
#define  CCV_CATEGORIZED_DENSE_MATRIX 129 
#define  CCV_CATEGORIZED_FILE 128 
 int /*<<< orphan*/  CCV_CLI_ERROR ; 
 int /*<<< orphan*/  CCV_CLI_INFO ; 
 int CCV_IO_ANY_FILE ; 
 int CCV_IO_RGB_COLOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC4 (TYPE_6__*,int) ; 
 TYPE_4__* FUNC5 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (TYPE_4__*,scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_4__**,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ **,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 

void FUNC12(ccv_array_t* categorizeds, ccv_size_t dim, int channels, int symmetric, ccv_dense_matrix_t** b)
{
	int i, count = 0;
	ccv_dense_matrix_t* c = FUNC5(dim.height, dim.width, channels | CCV_64F, 0, 0);
	FUNC11(c);
	ccv_dense_matrix_t* db = *b = FUNC6(*b, dim.height, dim.width, channels | CCV_32F, channels | CCV_32F, 0);
	for (i = 0; i < categorizeds->rnum; i++)
	{
		if (i % 23 == 0 || i == categorizeds->rnum - 1)
			FUNC0(CCV_CLI_INFO, " - compute mean activity %d / %d", i + 1, categorizeds->rnum);
		ccv_categorized_t* categorized = (ccv_categorized_t*)FUNC4(categorizeds, i);
		ccv_dense_matrix_t* image = 0;
		switch (categorized->type)
		{
			case CCV_CATEGORIZED_DENSE_MATRIX:
				image = categorized->matrix;
				break;
			case CCV_CATEGORIZED_FILE:
				FUNC8(categorized->file.filename, &image, CCV_IO_ANY_FILE | CCV_IO_RGB_COLOR);
				break;
		}
		if (!image)
		{
			FUNC1(CCV_CLI_ERROR, "cannot load %s.\n", categorized->file.filename);
			continue;
		}
		ccv_dense_matrix_t* patch = 0;
		if (image->cols != dim.width || image->rows != dim.height)
		{
			int x = (image->cols - dim.width + 1) / 2;
			int y = (image->rows - dim.height + 1) / 2;
			FUNC2(x == 0 || y == 0);
			FUNC10(image, (ccv_matrix_t**)&patch, CCV_32F, y, x, dim.height, dim.width);
		} else
			FUNC9(image, (ccv_matrix_t**)&patch, CCV_32F, 0, 0); // converting to 32f
		if (categorized->type != CCV_CATEGORIZED_DENSE_MATRIX)
			FUNC7(image);
		FUNC3(patch, c, (ccv_matrix_t**)&c, CCV_64F);
		++count;
		FUNC7(patch);
	}
	if (symmetric)
	{
		int j, k;
		double p = 0.5 / count;
		double* cptr = c->data.f64;
		float* dbptr = db->data.f32;
		for (i = 0; i < db->rows; i++)
		{
			for (j = 0; j < db->cols; j++)
				for (k = 0; k < channels; k++)
					dbptr[j * channels + k] = p * (cptr[j * channels + k] + cptr[(c->cols - j - 1) * channels + k]);
			dbptr += db->cols * channels;
			cptr += c->cols * channels;
		}
	} else {
		double p = 1.0 / count;
		for (i = 0; i < dim.height * dim.width * channels; i++)
			db->data.f32[i] = p * c->data.f64[i];
	}
	FUNC7(c);
	FUNC1(CCV_CLI_INFO, "\n");
}