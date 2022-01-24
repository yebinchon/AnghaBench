#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_stream_context_t ;
struct TYPE_6__ {scalar_t__ data; } ;
typedef  TYPE_1__ ccv_nnc_stateful_exec_t ;
struct TYPE_7__ {scalar_t__ data; } ;
typedef  TYPE_2__ ccv_nnc_cmd_t ;
typedef  int /*<<< orphan*/  ccv_cnnp_model_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,TYPE_2__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(const ccv_nnc_cmd_t cmd, const ccv_nnc_cmd_t minimizer, ccv_nnc_stream_context_t* const stream_context)
{
	ccv_nnc_stateful_exec_t* const stateful_exec = (ccv_nnc_stateful_exec_t*)cmd.data;
	ccv_cnnp_model_t* const model = (ccv_cnnp_model_t*)stateful_exec->data;
	FUNC1(model, minimizer, 0, 0);
	FUNC0(model, stream_context);
}