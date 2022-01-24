#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsfmt_t ;
struct TYPE_11__ {int* f32; } ;
struct TYPE_12__ {TYPE_1__ data; int /*<<< orphan*/  info; } ;
typedef  TYPE_2__ ccv_nnc_tensor_t ;
typedef  int /*<<< orphan*/  ccv_nnc_hint_t ;
struct TYPE_13__ {int backend; int algorithm; int /*<<< orphan*/  info; } ;
typedef  TYPE_3__ ccv_nnc_cmd_t ;

/* Variables and functions */
 TYPE_3__ FUNC0 (int,int,int,int,int) ; 
 int INPUT_DIM ; 
 int INPUT_SIZE ; 
 int KERNEL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,...) ; 
 int OUTPUT_DIM ; 
 int OUTPUT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_3__ FUNC4 (TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (float) ; 
 unsigned int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*,int,...) ; 

int FUNC16(int argc, char** argv)
{
	FUNC8();
	ccv_nnc_tensor_t* a = FUNC10(0, FUNC1(INPUT_SIZE, INPUT_SIZE, INPUT_DIM), 0);
	ccv_nnc_tensor_t* b = FUNC10(0, FUNC1(OUTPUT_SIZE, OUTPUT_SIZE, OUTPUT_DIM), 0);
	ccv_nnc_cmd_t cmd = FUNC0(1, OUTPUT_DIM, KERNEL_SIZE, KERNEL_SIZE, INPUT_DIM);
	ccv_nnc_hint_t hint = FUNC6(cmd.info, a->info, b->info);
	FUNC3(FUNC7(hint, cmd.info, a->info, b->info) == 0);
	ccv_nnc_tensor_t* w = FUNC10(0, FUNC1(OUTPUT_DIM, KERNEL_SIZE, KERNEL_SIZE, INPUT_DIM), 0);
	ccv_nnc_tensor_t* bias = FUNC10(0, FUNC1(OUTPUT_DIM), 0);
	// configure the inlets.
	dsfmt_t dsfmt;
	FUNC12(&dsfmt, 0);
	int i;
	for (i = 0; i < INPUT_DIM * KERNEL_SIZE * KERNEL_SIZE * OUTPUT_DIM; i++)
		w->data.f32[i] = FUNC11(&dsfmt) / (INPUT_DIM * KERNEL_SIZE * KERNEL_SIZE);
	for (i = 0; i < INPUT_SIZE * INPUT_SIZE * INPUT_DIM; i++)
		a->data.f32[i] = FUNC11(&dsfmt);
	for (i = 0; i < OUTPUT_DIM; i++)
		bias->data.f32[i] = (float)i / OUTPUT_DIM;
	unsigned int elapsed_time = FUNC14();
	FUNC5(cmd, hint, 0, FUNC2(a, w, bias), FUNC2(b), 0);
	elapsed_time = FUNC14() - elapsed_time;
	FUNC15("%u ms for ref\n", elapsed_time);
	ccv_nnc_tensor_t* c = FUNC10(0, FUNC1(OUTPUT_SIZE, OUTPUT_SIZE, OUTPUT_DIM), 0);
	ccv_nnc_cmd_t tuned_cmd = FUNC4(cmd, 0, hint, 0, FUNC2(a, w, bias), FUNC2(c), 0);
	elapsed_time = FUNC14();
	FUNC5(tuned_cmd, hint, 0, FUNC2(a, w, bias), FUNC2(c), 0);
	elapsed_time = FUNC14() - elapsed_time;
	FUNC15("%u ms for auto-tuned, backend %d, algorithm %d\n", elapsed_time, tuned_cmd.backend, tuned_cmd.algorithm);
	for (i = 0; i < OUTPUT_DIM * OUTPUT_SIZE * OUTPUT_SIZE; i++)
		if (FUNC13(b->data.f32[i] - c->data.f32[i]) > 1e-5)
			FUNC15("%d %f %f\n", i, b->data.f32[i], c->data.f32[i]);
	FUNC9(c);
	FUNC9(bias);
	FUNC9(w);
	FUNC9(b);
	FUNC9(a);
}