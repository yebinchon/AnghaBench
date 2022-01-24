#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int octave; int count; int grayscale; scalar_t__ cascade; } ;
typedef  TYPE_1__ ccv_icf_multiscale_classifier_cascade_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,...) ; 

void FUNC5(ccv_icf_multiscale_classifier_cascade_t* classifier, const char* directory)
{
	char filename[1024];
	FUNC4(filename, 1024, "%s/multiscale", directory);
	FILE* w = FUNC2(filename, "w+");
	FUNC3(w, "%d %d %d\n", classifier->octave, classifier->count, classifier->grayscale);
	FUNC1(w);
	int i;
	for (i = 0; i < classifier->count; i++)
	{
		FUNC4(filename, 1024, "%s/cascade-%d", directory, i + 1);
		w = FUNC2(filename, "w+");
		FUNC0(classifier->cascade + i, w);
		FUNC1(w);
	}
}