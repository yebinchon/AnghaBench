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
typedef  int /*<<< orphan*/  ccv_rect_t ;
typedef  int /*<<< orphan*/  ccv_dpm_new_param_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC1(char** posfiles, ccv_rect_t* bboxes, int posnum, char** bgfiles, int bgnum, int negnum, const char* dir, ccv_dpm_new_param_t params)
{
	FUNC0(stderr, " ccv_dpm_classifier_cascade_new requires libgsl and liblinear support, please compile ccv with them.\n");
}