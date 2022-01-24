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

/* Variables and functions */
 int /*<<< orphan*/  KEYBOARD ; 
 int Milestone ; 
 int PageNo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stdout ; 

FUNC3()
{
#ifndef NOPAUSE
	char ch[8];

	FUNC1("\nTo continue, press RETURN");
	FUNC0(stdout);
	FUNC2(KEYBOARD, ch, 8);
#endif
	FUNC1("\nDiagnosis resumes after milestone Number %d", Milestone);
	FUNC1("          Page: %d\n\n", PageNo);
	++Milestone;
	++PageNo;
	}