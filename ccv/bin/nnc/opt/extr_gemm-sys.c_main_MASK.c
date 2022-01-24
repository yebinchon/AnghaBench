#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsfmt_t ;
struct TYPE_9__ {int* f32; } ;
struct TYPE_10__ {TYPE_1__ data; } ;
typedef  TYPE_2__ ccv_nnc_tensor_t ;
struct TYPE_11__ {scalar_t__ backend; int algorithm; } ;
typedef  TYPE_3__ ccv_nnc_cmd_t ;

/* Variables and functions */
 void* CCV_NNC_BACKEND_CPU_OPT ; 
 int /*<<< orphan*/  CCV_NNC_GEMM_BACKWARD ; 
 int /*<<< orphan*/  CCV_NNC_GEMM_FORWARD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int INPUT_DIM ; 
 int /*<<< orphan*/  FUNC1 (int,...) ; 
 int OUTPUT_DIM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_3__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  ccv_nnc_no_hint ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (double) ; 
 unsigned int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,int,...) ; 

int FUNC14(int argc, char** argv)
{
	FUNC6();
	ccv_nnc_tensor_t* a = FUNC8(0, FUNC1(INPUT_DIM), 0);
	ccv_nnc_tensor_t* b = FUNC8(0, FUNC1(OUTPUT_DIM), 0);
	ccv_nnc_cmd_t forw_cmd = FUNC4(CCV_NNC_GEMM_FORWARD, 0, FUNC0(OUTPUT_DIM), 0);
	ccv_nnc_tensor_t* w = FUNC8(0, FUNC1(INPUT_DIM, OUTPUT_DIM), 0);
	ccv_nnc_tensor_t* bias = FUNC8(0, FUNC1(OUTPUT_DIM), 0);
	// configure the inlets.
	dsfmt_t dsfmt;
	FUNC10(&dsfmt, 0);
	int i;
	for (i = 0; i < INPUT_DIM * OUTPUT_DIM; i++)
		w->data.f32[i] = FUNC9(&dsfmt) / INPUT_DIM;
	for (i = 0; i < INPUT_DIM; i++)
		a->data.f32[i] = FUNC9(&dsfmt);
	for (i = 0; i < OUTPUT_DIM; i++)
		bias->data.f32[i] = (float)i / OUTPUT_DIM;
	unsigned int elapsed_time = FUNC12();
	FUNC5(forw_cmd, ccv_nnc_no_hint, 0, FUNC2(a, w, bias), FUNC2(b), 0);
	elapsed_time = FUNC12() - elapsed_time;
	FUNC13("forw %u ms for ref\n", elapsed_time);
	ccv_nnc_tensor_t* c = FUNC8(0, FUNC1(OUTPUT_DIM), 0);
	forw_cmd.backend = CCV_NNC_BACKEND_CPU_OPT;
	FUNC3(forw_cmd.backend >= 0);
	forw_cmd.algorithm = 1; // CCV_NNC_CMD_OPT_FC_ALGO_GEMM = 1
	elapsed_time = FUNC12();
	FUNC5(forw_cmd, ccv_nnc_no_hint, 0, FUNC2(a, w, bias), FUNC2(c), 0);
	elapsed_time = FUNC12() - elapsed_time;
	FUNC13("forw %u ms for optimized\n", elapsed_time);
	for (i = 0; i < OUTPUT_DIM; i++)
		if (FUNC11(b->data.f32[i] - c->data.f32[i]) > 1e-5)
			FUNC13("forw output[%d]: %f %f\n", i, b->data.f32[i], c->data.f32[i]);
	ccv_nnc_tensor_t* dw = FUNC8(0, FUNC1(INPUT_DIM, OUTPUT_DIM), 0);
	ccv_nnc_tensor_t* h = FUNC8(0, FUNC1(INPUT_DIM), 0);
	ccv_nnc_cmd_t back_cmd = FUNC4(CCV_NNC_GEMM_BACKWARD, 0, FUNC0(OUTPUT_DIM), 0);
	elapsed_time = FUNC12();
	FUNC5(back_cmd, ccv_nnc_no_hint, 0, FUNC2(b, a, w), FUNC2(h, dw, bias), 0);
	elapsed_time = FUNC12() - elapsed_time;
	FUNC13("back %u ms for ref\n", elapsed_time);
	ccv_nnc_tensor_t* dwc = FUNC8(0, FUNC1(INPUT_DIM, OUTPUT_DIM), 0);
	ccv_nnc_tensor_t* hc = FUNC8(0, FUNC1(INPUT_DIM), 0);
	ccv_nnc_tensor_t* biasc = FUNC8(0, FUNC1(OUTPUT_DIM), 0);
	back_cmd.backend = CCV_NNC_BACKEND_CPU_OPT;
	FUNC3(back_cmd.backend >= 0);
	back_cmd.algorithm = 1; // CCV_NNC_CMD_OPT_FC_ALGO_GEMM = 1
	elapsed_time = FUNC12();
	FUNC5(back_cmd, ccv_nnc_no_hint, 0, FUNC2(b, a, w), FUNC2(hc, dwc, biasc), 0);
	elapsed_time = FUNC12() - elapsed_time;
	FUNC13("back %u ms for optimized\n", elapsed_time);
	for (i = 0; i < OUTPUT_DIM; i++)
		if (FUNC11(bias->data.f32[i] - biasc->data.f32[i]) > 1e-5)
			FUNC13("back bias[%d]: %f %f\n", i, bias->data.f32[i], biasc->data.f32[i]);
	for (i = 0; i < INPUT_DIM * OUTPUT_DIM; i++)
		if (FUNC11(dw->data.f32[i] - dwc->data.f32[i]) > 1e-5)
			FUNC13("back dw[%d]: %f %f\n", i, dw->data.f32[i], dwc->data.f32[i]);
	for (i = 0; i < INPUT_DIM; i++)
		if (FUNC11(h->data.f32[i] - hc->data.f32[i]) > 1e-5)
			FUNC13("back h[%d]: %f %f\n", i, h->data.f32[i], hc->data.f32[i]);
	FUNC7(biasc);
	FUNC7(dwc);
	FUNC7(hc);
	FUNC7(c);
	FUNC7(bias);
	FUNC7(w);
	FUNC7(dw);
	FUNC7(h);
	FUNC7(b);
	FUNC7(a);
}