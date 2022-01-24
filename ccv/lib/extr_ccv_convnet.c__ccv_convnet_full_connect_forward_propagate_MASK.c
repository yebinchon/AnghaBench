#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_matrix_t ;
struct TYPE_15__ {float* f32; } ;
struct TYPE_18__ {int type; int rows; int cols; int step; TYPE_1__ data; } ;
typedef  TYPE_4__ ccv_dense_matrix_t ;
struct TYPE_16__ {scalar_t__ relu; int /*<<< orphan*/  count; } ;
struct TYPE_17__ {TYPE_2__ full_connect; } ;
struct TYPE_19__ {int wnum; float* bias; TYPE_3__ net; int /*<<< orphan*/  w; } ;
typedef  TYPE_5__ ccv_convnet_layer_t ;

/* Variables and functions */
 int CCV_32F ; 
 int CCV_C1 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_4__ FUNC4 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_4__*,int,TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 float FUNC7 (int /*<<< orphan*/ ,float) ; 

__attribute__((used)) static void FUNC8(ccv_convnet_layer_t* layer, ccv_dense_matrix_t* a, ccv_dense_matrix_t** b)
{
	FUNC3(FUNC1(a->type) == CCV_32F);
	ccv_dense_matrix_t* db = *b = FUNC5(*b, layer->net.full_connect.count, 1, CCV_32F | CCV_C1, CCV_32F | CCV_C1, 0);
	int ch = FUNC0(a->type);
	int rows = a->rows, cols = a->cols;
	// reshape a for gemm
	FUNC3(a->step == a->cols * FUNC2(a->type) * ch);
	a->rows = rows * cols * ch, a->cols = 1, a->type = (a->type - ch) | CCV_C1;
	FUNC3(a->rows * db->rows == layer->wnum);
	a->step = a->cols * FUNC2(a->type);
	int i;
	float* bptr = db->data.f32;
	for (i = 0; i < db->rows; i++)
		bptr[i] = layer->bias[i];
	ccv_dense_matrix_t dw = FUNC4(db->rows, a->rows, CCV_32F | CCV_C1, layer->w, 0);
	FUNC6(&dw, a, 1, db, 1, 0, (ccv_matrix_t**)&db, 0); // supply db as matrix C is allowed
	if (layer->net.full_connect.relu)
		for (i = 0; i < db->rows; i++)
			bptr[i] = FUNC7(0, bptr[i]); // relu
	a->rows = rows, a->cols = cols, a->type = (a->type - FUNC0(a->type)) | ch;
	a->step = a->cols * FUNC2(a->type) * FUNC0(a->type);
}