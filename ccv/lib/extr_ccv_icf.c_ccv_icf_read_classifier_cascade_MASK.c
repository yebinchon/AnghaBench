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
typedef  int /*<<< orphan*/  ccv_icf_classifier_cascade_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 

ccv_icf_classifier_cascade_t* FUNC4(const char* filename)
{
	FILE* r = FUNC3(filename, "r");
	ccv_icf_classifier_cascade_t* cascade = 0;
	if (r)
	{
		cascade = (ccv_icf_classifier_cascade_t*)FUNC1(sizeof(ccv_icf_classifier_cascade_t));
		FUNC0(r, cascade);
		FUNC2(r);
	}
	return cascade;
}