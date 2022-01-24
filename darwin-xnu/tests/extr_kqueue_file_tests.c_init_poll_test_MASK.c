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
typedef  int /*<<< orphan*/  test_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int,int,int,int,int) ; 

void
FUNC1(test_t *tst, char *testname, char *watchfile, int nprep, int nclean, int event, int want) 
{
	FUNC0(tst, testname, watchfile, nprep, nclean, event, want, 1);
}