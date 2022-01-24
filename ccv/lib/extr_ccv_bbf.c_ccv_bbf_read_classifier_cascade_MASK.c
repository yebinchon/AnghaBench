#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_bbf_stage_classifier_t ;
struct TYPE_4__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_5__ {int count; int /*<<< orphan*/ * stage_classifier; TYPE_1__ size; } ;
typedef  TYPE_2__ ccv_bbf_classifier_cascade_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*,...) ; 

ccv_bbf_classifier_cascade_t* FUNC7(const char* directory)
{
	char buf[1024];
	FUNC6(buf, "%s/cascade.txt", directory);
	int s, i;
	FILE* r = FUNC4(buf, "r");
	if (r == 0)
		return 0;
	ccv_bbf_classifier_cascade_t* cascade = (ccv_bbf_classifier_cascade_t*)FUNC2(sizeof(ccv_bbf_classifier_cascade_t));
	s = FUNC5(r, "%d %d %d", &cascade->count, &cascade->size.width, &cascade->size.height);
	FUNC1(s > 0);
	cascade->stage_classifier = (ccv_bbf_stage_classifier_t*)FUNC2(cascade->count * sizeof(ccv_bbf_stage_classifier_t));
	for (i = 0; i < cascade->count; i++)
	{
		FUNC6(buf, "%s/stage-%d.txt", directory, i);
		if (FUNC0(buf, &cascade->stage_classifier[i]) < 0)
		{
			cascade->count = i;
			break;
		}
	}
	FUNC3(r);
	return cascade;
}