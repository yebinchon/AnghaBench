#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_cnnp_model_t ;
typedef  int /*<<< orphan*/  ccv_cnnp_model_io_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int const,int const,int const,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ccv_cnnp_model_t* FUNC5(const int filters, const int strides, const int border, const int blocks)
{
	ccv_cnnp_model_io_t input = FUNC2();
	ccv_cnnp_model_t* first_block = FUNC1(filters, strides, border, 1);
	ccv_cnnp_model_io_t output = FUNC3(first_block, FUNC0(input));
	int i;
	for (i = 1; i < blocks; i++)
	{
		ccv_cnnp_model_t* block = FUNC1(filters, 1, 1, 0);
		output = FUNC3(block, FUNC0(output));
	}
	return FUNC4(FUNC0(input), FUNC0(output), 0);
}