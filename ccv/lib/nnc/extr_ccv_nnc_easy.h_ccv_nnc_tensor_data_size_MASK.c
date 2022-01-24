#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  datatype; } ;
typedef  TYPE_1__ ccv_nnc_tensor_param_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__ const) ; 

__attribute__((used)) static inline size_t FUNC2(const ccv_nnc_tensor_param_t params)
{
	return (FUNC0(params.datatype) * (ssize_t)FUNC1(params) + 15) & -16;
}