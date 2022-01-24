#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ format; int* dim; } ;
typedef  TYPE_4__ ccv_nnc_tensor_param_t ;
struct TYPE_13__ {int* begin; int* end; } ;
struct TYPE_12__ {int /*<<< orphan*/ * dim; } ;
struct TYPE_16__ {TYPE_2__ border; TYPE_1__ stride; } ;
typedef  TYPE_5__ ccv_nnc_hint_t ;
struct TYPE_14__ {int* dim; } ;
struct TYPE_17__ {TYPE_3__ size; } ;
typedef  TYPE_6__ ccv_nnc_cmd_param_t ;

/* Variables and functions */
 int CCV_NNC_MAX_DIM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__ const,int const) ; 
 int FUNC3 (int*) ; 

__attribute__((used)) static inline void FUNC4(const ccv_nnc_cmd_param_t cmd, const ccv_nnc_tensor_param_t a, const ccv_nnc_hint_t hint, ccv_nnc_tensor_param_t* b)
{
	int i;
	FUNC0(a.format == b->format);
	const int nd = FUNC3(a.dim);
	FUNC0(nd == CCV_NNC_MAX_DIM + 1 || nd == CCV_NNC_MAX_DIM + 2);
	int hw = FUNC2(a, nd);
	FUNC0(hw >= 0);
	for (i = 0; i < CCV_NNC_MAX_DIM; i++)
	{
		int stride = FUNC1(1, hint.stride.dim[i]);
		b->dim[i + hw] = (a.dim[i + hw] - 1) * stride - hint.border.begin[i] - hint.border.end[i] + cmd.size.dim[i];
	}
}