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
struct TYPE_10__ {TYPE_1__ data; int /*<<< orphan*/  info; } ;
typedef  TYPE_2__ ccv_nnc_tensor_t ;
typedef  int /*<<< orphan*/  ccv_nnc_hint_t ;
struct TYPE_11__ {scalar_t__ backend; scalar_t__ algorithm; int /*<<< orphan*/  info; } ;
typedef  TYPE_3__ ccv_nnc_cmd_t ;

/* Variables and functions */
 scalar_t__ CCV_NNC_BACKEND_CPU_OPT ; 
 TYPE_3__ FUNC0 (int,int,int,int,int) ; 
 int INPUT_DIM ; 
 int INPUT_SIZE ; 
 int KERNEL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,...) ; 
 int OUTPUT_DIM ; 
 int OUTPUT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (float) ; 
 unsigned int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,int,...) ; 

int FUNC15(int argc, char** argv)
{
	FUNC7();
	ccv_nnc_tensor_t* a = FUNC9(0, FUNC1(INPUT_SIZE, INPUT_SIZE, INPUT_DIM), 0);
	ccv_nnc_tensor_t* b = FUNC9(0, FUNC1(OUTPUT_SIZE, OUTPUT_SIZE, OUTPUT_DIM), 0);
	ccv_nnc_cmd_t cmd = FUNC0(1, OUTPUT_DIM, KERNEL_SIZE, KERNEL_SIZE, INPUT_DIM);
	ccv_nnc_hint_t hint = FUNC5(cmd.info, a->info, b->info);
	FUNC3(FUNC6(hint, cmd.info, a->info, b->info) == 0);
	ccv_nnc_tensor_t* w = FUNC9(0, FUNC1(OUTPUT_DIM, KERNEL_SIZE, KERNEL_SIZE, INPUT_DIM), 0);
	ccv_nnc_tensor_t* bias = FUNC9(0, FUNC1(OUTPUT_DIM), 0);
	// configure the inlets.
	dsfmt_t dsfmt;
	FUNC11(&dsfmt, 0);
	int i;
	for (i = 0; i < INPUT_DIM * KERNEL_SIZE * KERNEL_SIZE * OUTPUT_DIM; i++)
		w->data.f32[i] = FUNC10(&dsfmt) / (INPUT_DIM * KERNEL_SIZE * KERNEL_SIZE);
	for (i = 0; i < INPUT_SIZE * INPUT_SIZE * INPUT_DIM; i++)
		a->data.f32[i] = FUNC10(&dsfmt);
	for (i = 0; i < OUTPUT_DIM; i++)
		bias->data.f32[i] = (float)i / OUTPUT_DIM;
	unsigned int elapsed_time = FUNC13();
	FUNC4(cmd, hint, 0, FUNC2(a, w, bias), FUNC2(b), 0);
	elapsed_time = FUNC13() - elapsed_time;
	FUNC14("%u ms for ref\n", elapsed_time);
	ccv_nnc_tensor_t* c = FUNC9(0, FUNC1(OUTPUT_SIZE, OUTPUT_SIZE, OUTPUT_DIM), 0);
	cmd.backend = CCV_NNC_BACKEND_CPU_OPT;
	FUNC3(cmd.backend >= 0);
	cmd.algorithm = 0; // CCV_NNC_CMD_OPT_CONV_ALGO_DC
	elapsed_time = FUNC13();
	FUNC4(cmd, hint, 0, FUNC2(a, w, bias), FUNC2(c), 0);
	elapsed_time = FUNC13() - elapsed_time;
	FUNC14("%u ms for optimized\n", elapsed_time);
	for (i = 0; i < OUTPUT_DIM * OUTPUT_SIZE * OUTPUT_SIZE; i++)
		if (FUNC12(b->data.f32[i] - c->data.f32[i]) > 1e-5)
			FUNC14("%d %f %f\n", i, b->data.f32[i], c->data.f32[i]);
	FUNC8(c);
	FUNC8(bias);
	FUNC8(w);
	FUNC8(b);
	FUNC8(a);
}