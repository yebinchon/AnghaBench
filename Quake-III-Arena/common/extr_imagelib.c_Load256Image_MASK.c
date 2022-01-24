#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  byte ;
struct TYPE_2__ {int w; int h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 TYPE_1__ bmhd ; 

void FUNC6 (const char *name, byte **pixels, byte **palette,
				   int *width, int *height)
{
	char	ext[128];

	FUNC1 (name, ext);
	if (!FUNC5 (ext, "lbm"))
	{
		FUNC3 (name, pixels, palette);
		if (width)
			*width = bmhd.w;
		if (height)
			*height = bmhd.h;
	}
	else if (!FUNC5 (ext, "pcx"))
	{
		FUNC4 (name, pixels, palette, width, height);
	}
	else if (!FUNC5 (ext, "bmp"))
	{
		FUNC2 (name, pixels, palette, width, height);
	}
	else
		FUNC0 ("%s doesn't have a known image extension", name);
}