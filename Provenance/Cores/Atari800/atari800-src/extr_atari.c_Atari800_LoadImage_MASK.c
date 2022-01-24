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
typedef  int /*<<< orphan*/  UBYTE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 

int FUNC4(const char *filename, UBYTE *buffer, int nbytes)
{
	FILE *f;
	int len;

	f = FUNC2(filename, "rb");
	if (f == NULL) {
		FUNC0("Error loading ROM image: %s", filename);
		return FALSE;
	}
	len = FUNC3(buffer, 1, nbytes, f);
	FUNC1(f);
	if (len != nbytes) {
		FUNC0("Error reading %s", filename);
		return FALSE;
	}
	return TRUE;
}