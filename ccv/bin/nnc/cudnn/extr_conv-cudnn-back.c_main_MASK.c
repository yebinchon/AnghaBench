#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsfmt_t ;
struct TYPE_12__ {int* f32; } ;
struct TYPE_13__ {TYPE_1__ data; int /*<<< orphan*/  info; } ;
typedef  TYPE_2__ ccv_nnc_tensor_t ;
typedef  int /*<<< orphan*/  ccv_nnc_stream_context_t ;
typedef  int /*<<< orphan*/  ccv_nnc_hint_t ;
struct TYPE_14__ {scalar_t__ backend; int algorithm; int /*<<< orphan*/  info; } ;
typedef  TYPE_3__ ccv_nnc_cmd_t ;

/* Variables and functions */
 int BATCH_SIZE ; 
 scalar_t__ CCV_NNC_BACKEND_CPU_REF ; 
 void* CCV_NNC_BACKEND_GPU_CUDNN ; 
 scalar_t__ CCV_NNC_BACKEND_GPU_REF ; 
 int /*<<< orphan*/  CCV_NNC_DATA_TRANSFER_FORWARD ; 
 scalar_t__ CCV_NNC_EXEC_SUCCESS ; 
 int /*<<< orphan*/  CCV_NNC_FORMAT_TRANSFORM_FORWARD ; 
 int /*<<< orphan*/  CCV_STREAM_CONTEXT_GPU ; 
 TYPE_3__ FUNC0 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,...) ; 
 int INPUT_DIM ; 
 int INPUT_SIZE ; 
 int KERNEL_SIZE ; 
 int OUTPUT_DIM ; 
 int OUTPUT_SIZE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,int) ; 
 TYPE_3__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccv_nnc_cmd_auto ; 
 TYPE_3__ FUNC8 (TYPE_3__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  ccv_nnc_no_hint ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC20 (double) ; 
 unsigned int FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (char*,int,...) ; 

int FUNC23(int argc, char** argv)
{
	FUNC12();
	ccv_nnc_tensor_t* a = FUNC17(0, FUNC1(INPUT_DIM, INPUT_SIZE, INPUT_SIZE, BATCH_SIZE), 0);
	ccv_nnc_tensor_t* b = FUNC17(0, FUNC1(OUTPUT_DIM, OUTPUT_SIZE, OUTPUT_SIZE, BATCH_SIZE), 0);
	ccv_nnc_cmd_t cmd = FUNC0(1, OUTPUT_DIM, INPUT_DIM, KERNEL_SIZE, KERNEL_SIZE);
	cmd.backend = CCV_NNC_BACKEND_CPU_REF;
	FUNC5(cmd.backend >= 0);
	ccv_nnc_hint_t hint = FUNC10(cmd.info, a->info, b->info);
	FUNC5(FUNC11(hint, cmd.info, a->info, b->info) == 0);
	ccv_nnc_tensor_t* w = FUNC17(0, FUNC1(INPUT_DIM, KERNEL_SIZE, KERNEL_SIZE, OUTPUT_DIM), 0);
	ccv_nnc_tensor_t* bias = FUNC17(0, FUNC1(OUTPUT_DIM), 0);
	// configure the inlets.
	dsfmt_t dsfmt;
	FUNC19(&dsfmt, 0);
	int i;
	for (i = 0; i < INPUT_DIM * KERNEL_SIZE * KERNEL_SIZE * OUTPUT_DIM; i++)
		w->data.f32[i] = FUNC18(&dsfmt) / (INPUT_DIM * KERNEL_SIZE * KERNEL_SIZE);
	for (i = 0; i < INPUT_SIZE * INPUT_SIZE * INPUT_DIM * FUNC6(1, BATCH_SIZE); i++)
		a->data.f32[i] = FUNC18(&dsfmt);
	for (i = 0; i < OUTPUT_DIM; i++)
		bias->data.f32[i] = (float)i / OUTPUT_DIM;
	// Copy generated matrix values over to GPU.
	ccv_nnc_tensor_t* ga = FUNC17(0, FUNC3(000, INPUT_DIM, INPUT_SIZE, INPUT_SIZE, BATCH_SIZE), 0);
	ccv_nnc_tensor_t* gw = FUNC17(0, FUNC3(000, INPUT_DIM, KERNEL_SIZE, KERNEL_SIZE, OUTPUT_DIM), 0);
	ccv_nnc_tensor_t* gwo = FUNC17(0, FUNC2(000, KERNEL_SIZE, KERNEL_SIZE, INPUT_DIM, OUTPUT_DIM), 0);
	ccv_nnc_tensor_t* gbias = FUNC17(0, FUNC3(000, OUTPUT_DIM), 0);
	unsigned int elapsed_time = FUNC21();
	ccv_nnc_cmd_t move = FUNC7(CCV_NNC_DATA_TRANSFER_FORWARD, 0, ccv_nnc_cmd_auto, 0);
	move.backend = CCV_NNC_BACKEND_GPU_REF;
	FUNC5(move.backend >= 0);
	FUNC9(move, ccv_nnc_no_hint, 0, FUNC4(a, w, bias), FUNC4(ga, gw, gbias), 0);
	FUNC9(cmd, hint, 0, FUNC4(a, w, bias), FUNC4(b), 0);
	elapsed_time = FUNC21() - elapsed_time;
	FUNC22("%u ms for ref\n", elapsed_time);
	ccv_nnc_tensor_t* gc = FUNC17(0, FUNC3(000, OUTPUT_DIM, OUTPUT_SIZE, OUTPUT_SIZE, BATCH_SIZE), 0);

	ccv_nnc_cmd_t transform = FUNC7(CCV_NNC_FORMAT_TRANSFORM_FORWARD, 0, ccv_nnc_cmd_auto, 0);
	transform.backend = CCV_NNC_BACKEND_GPU_CUDNN;
	FUNC5(transform.backend >= 0);
	ccv_nnc_stream_context_t* stream_context = FUNC14(CCV_STREAM_CONTEXT_GPU);
	FUNC9(transform, ccv_nnc_no_hint, 0, FUNC4(gw), FUNC4(gwo), stream_context);
	FUNC15(stream_context);
	FUNC16(gw);

	cmd.backend = CCV_NNC_BACKEND_GPU_CUDNN;
	FUNC5(cmd.backend >= 0);
	cmd.algorithm = -1;
	cmd = FUNC8(cmd, 2 * 1024 * 1024 * 1024, hint, 0, FUNC4(ga, gwo, gbias), FUNC4(gc), stream_context);
	elapsed_time = FUNC21();
	FUNC5(CCV_NNC_EXEC_SUCCESS == FUNC9(cmd, hint, 0, FUNC4(ga, gwo, gbias), FUNC4(gc), stream_context));
	FUNC15(stream_context);
	FUNC13(stream_context);
	elapsed_time = FUNC21() - elapsed_time;
	FUNC22("%u ms for optimized\n", elapsed_time);
	ccv_nnc_tensor_t* c = FUNC17(0, FUNC1(OUTPUT_DIM, OUTPUT_SIZE, OUTPUT_SIZE, BATCH_SIZE), 0);
	FUNC9(move, ccv_nnc_no_hint, 0, FUNC4(gc), FUNC4(c), 0);
	for (i = 0; i < OUTPUT_DIM * OUTPUT_SIZE * OUTPUT_SIZE; i++)
		if (FUNC20(b->data.f32[i] - c->data.f32[i]) > 1e-5)
			FUNC22("%d %f %f\n", i, b->data.f32[i], c->data.f32[i]);
	FUNC16(c);
	FUNC16(gc);
	FUNC16(bias);
	FUNC16(w);
	FUNC16(b);
	FUNC16(a);
	FUNC16(gbias);
	FUNC16(gwo);
	FUNC16(ga);
}