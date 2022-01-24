#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ rows; scalar_t__ cols; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ ccv_dense_matrix_t ;
struct TYPE_12__ {scalar_t__ channels; scalar_t__ rows; scalar_t__ cols; int count; TYPE_1__** acts; scalar_t__ denoms; scalar_t__ layers; scalar_t__ use_cwc_accel; } ;
typedef  TYPE_2__ ccv_convnet_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*,TYPE_1__**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__**,TYPE_1__**,int) ; 

void FUNC4(ccv_convnet_t* convnet, ccv_dense_matrix_t** a, ccv_dense_matrix_t** b, int batch)
{
#ifdef HAVE_CUDA
	if (convnet->use_cwc_accel)
		cwc_convnet_encode(convnet, a, b, batch);
	else {
#endif
	FUNC2(batch == 1);
	FUNC2(FUNC0((*a)->type) == convnet->channels);
	FUNC2((*a)->rows == convnet->rows);
	FUNC2((*a)->cols == convnet->cols);
	int i;
	// save the last layer of neuron cache in case that we encode to a different matrix
	ccv_dense_matrix_t* out_neuron = convnet->acts[convnet->count - 1];
	convnet->acts[convnet->count - 1] = *b;
	FUNC1(convnet->layers, *a, convnet->acts, convnet->denoms);
	for (i = 1; i < convnet->count; i++)
		FUNC1(convnet->layers + i, convnet->acts[i - 1], convnet->acts + i, convnet->denoms + i);
	if (convnet->acts + convnet->count - 1 != b)
	{
		*b = convnet->acts[convnet->count - 1];
		// restore the last layer of neuron cache
		convnet->acts[convnet->count - 1] = out_neuron;
	}
#ifdef HAVE_CUDA
	}
#endif
}