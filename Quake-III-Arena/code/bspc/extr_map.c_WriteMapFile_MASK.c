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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 double FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 double c_writtenbrushes ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 

void FUNC5(char *filename)
{
	FILE *fp;
	double start_time;

	c_writtenbrushes = 0;
	//the time started
	start_time = FUNC0();
	//
	FUNC1("writing %s\n", filename);
	fp = FUNC4(filename, "wb");
	if (!fp)
	{
		FUNC1("can't open %s\n", filename);
		return;
	} //end if
	if (!FUNC2(fp))
	{
		FUNC3(fp);
		FUNC1("error writing map file %s\n", filename);
		return;
	} //end if
	FUNC3(fp);
	//display creation time
	FUNC1("written %d brushes\n", c_writtenbrushes);
	FUNC1("map file written in %5.0f seconds\n", FUNC0() - start_time);
}