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
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  ccv_cnnp_dataframe_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  _ccv_cnnp_image_deinit ; 
 int /*<<< orphan*/  _ccv_cnnp_read_image ; 
 int FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

int FUNC2(ccv_cnnp_dataframe_t* const dataframe, const int column_idx, const off_t structof)
{
	return FUNC1(dataframe, _ccv_cnnp_read_image, 0, _ccv_cnnp_image_deinit, FUNC0(column_idx), (void*)(uintptr_t)structof, 0);
}