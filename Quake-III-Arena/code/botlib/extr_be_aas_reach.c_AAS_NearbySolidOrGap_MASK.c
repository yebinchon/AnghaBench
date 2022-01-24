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
typedef  int* vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int*) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC6(vec3_t start, vec3_t end)
{
	vec3_t dir, testpoint;
	int areanum;

	FUNC5(end, start, dir);
	dir[2] = 0;
	FUNC4(dir);
	FUNC3(end, 48, dir, testpoint);

	areanum = FUNC2(testpoint);
	if (!areanum)
	{
		testpoint[2] += 16;
		areanum = FUNC2(testpoint);
		if (!areanum) return qtrue;
	} //end if
	FUNC3(end, 64, dir, testpoint);
	areanum = FUNC2(testpoint);
	if (areanum)
	{
		if (!FUNC1(areanum) && !FUNC0(areanum)) return qtrue;
	} //end if
	return qfalse;
}