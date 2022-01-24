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
typedef  int /*<<< orphan*/  rgb ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char FUNC0 (int) ; 
 char FUNC1 (int) ; 
 char FUNC2 (int) ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 

int FUNC6(const char *filename)
{
	FILE *fp;
	int i;

	fp = FUNC4(filename, "wb");
	if (fp == NULL) {
		return FALSE;
	}

	/* Create a raw 768-byte file with RGB values. */
	for (i = 0; i < 256; i ++) {
		char rgb[3];
		rgb[0] = FUNC2(i);
		rgb[1] = FUNC1(i);
		rgb[2] = FUNC0(i);
		if (FUNC5(rgb, sizeof(rgb), 1, fp) != 1) {
			FUNC3(fp);
			return FALSE;
		}
	}

	FUNC3(fp);
	return TRUE;
}