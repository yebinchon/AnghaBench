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
struct TYPE_3__ {int loaded; unsigned char* palette; int /*<<< orphan*/  filename; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ COLOURS_EXTERNAL_t ;

/* Variables and functions */
 int EOF ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3(COLOURS_EXTERNAL_t *colours)
{
	FILE *fp;
	int i;
	unsigned char *pal_ptr;

	fp = FUNC2(colours->filename, "rb");
	if (fp == NULL) {
		colours->loaded = FALSE;
		return FALSE;
	}
	for (i = 0, pal_ptr = colours->palette; i < 768; i++) {
		int c = FUNC1(fp);
		if (c == EOF) {
			FUNC0(fp);
			colours->loaded = FALSE;
			return FALSE;
		}
		*pal_ptr++ = c;
	}
	FUNC0(fp);
	colours->loaded = TRUE;
	return TRUE;
}