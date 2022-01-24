#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  type; int /*<<< orphan*/  cols; int /*<<< orphan*/  rows; } ;
typedef  TYPE_3__ ccv_dense_matrix_t ;
struct TYPE_21__ {int channels; int count; int strides; int border; int rows; int cols; } ;
struct TYPE_22__ {TYPE_1__ convolutional; } ;
struct TYPE_24__ {TYPE_2__ net; } ;
typedef  TYPE_4__ ccv_convnet_layer_t ;

/* Variables and functions */
 int CCV_32F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_3__*,TYPE_3__*,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_3__*,TYPE_3__*,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__*,TYPE_3__*,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*) ; 
 TYPE_3__* FUNC8 (TYPE_3__*,int,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(ccv_convnet_layer_t* layer, ccv_dense_matrix_t* a, ccv_dense_matrix_t** b)
{
	int rows, cols, partition;
	FUNC7(layer, a->rows, a->cols, &rows, &cols, &partition);
	int ch = layer->net.convolutional.channels;
	int count = layer->net.convolutional.count;
	int strides = layer->net.convolutional.strides;
	int border = layer->net.convolutional.border;
	int kernel_rows = layer->net.convolutional.rows;
	int kernel_cols = layer->net.convolutional.cols;
	int type = CCV_32F | count;
	FUNC6(FUNC0(a->type) == ch);
	FUNC6(FUNC1(a->type) == CCV_32F);
	ccv_dense_matrix_t* db = *b = FUNC8(*b, rows, cols, type, type, 0);
	int ch_per_partition = ch / partition;
	int count_per_partition = count / partition;
	FUNC6(count_per_partition % 4 == 0);
#if defined(HAVE_SSE2) || defined(HAVE_NEON)
	_ccv_convnet_layer_simd_alloc_reserved(layer);
#endif
#if defined(HAVE_SSE2)
	_ccv_convnet_convolutional_forward_propagate_sse2(layer, a, db, rows, cols, ch, count, strides, border, kernel_rows, kernel_cols, ch_per_partition, count_per_partition);
#elif defined(HAVE_NEON)
	_ccv_convnet_convolutional_forward_propagate_neon(layer, a, db, rows, cols, ch, count, strides, border, kernel_rows, kernel_cols, ch_per_partition, count_per_partition);
#else
	FUNC2(layer, a, db, rows, cols, ch, count, strides, border, kernel_rows, kernel_cols, ch_per_partition, count_per_partition);
#endif
}