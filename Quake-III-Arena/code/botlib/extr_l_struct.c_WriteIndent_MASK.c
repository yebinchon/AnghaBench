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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC1(FILE *fp, int indent)
{
	while(indent-- > 0)
	{
		if (FUNC0(fp, "\t") < 0) return qfalse;
	} //end while
	return qtrue;
}