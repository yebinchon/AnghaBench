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
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 

void FUNC5 (const char *name, byte *pixels, byte *palette,
				   int width, int height)
{
	char	ext[128];

	FUNC1 (name, ext);
	if (!FUNC2 (ext, "lbm"))
	{
		FUNC3 (name, pixels, width, height, palette);
	}
	else if (!FUNC2 (ext, "pcx"))
	{
		FUNC4 (name, pixels, width, height, palette);
	}
	else
		FUNC0 ("%s doesn't have a known image extension", name);
}