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
typedef  int /*<<< orphan*/  DTBLOB_T ;

/* Variables and functions */
 int /*<<< orphan*/  DIR_MODE ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  dt_overlays_dir ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 char* FUNC9 (char*,char const*,...) ; 

__attribute__((used)) static int FUNC10(const char *overlay_file, const char *overlay)
{
    const char *overlay_dir = FUNC9("%s/%s", dt_overlays_dir, overlay);
    int ret = 0;
    if (FUNC0(overlay_dir))
    {
	FUNC4("Overlay '%s' is already loaded", overlay);
    }
    else if (FUNC6(overlay_dir, DIR_MODE) == 0)
    {
	DTBLOB_T *dtb = FUNC2(overlay_file, 0);
	if (!dtb)
	{
	    FUNC4("Failed to apply overlay '%s' (load)", overlay);
	}
	else
	{
	    const char *dest_file = FUNC9("%s/dtbo", overlay_dir);

	    /* then write the overlay to the file */
	    if (FUNC3(dtb, dest_file) != 0)
		FUNC4("Failed to apply overlay '%s' (save)", overlay);
	    else if (!FUNC7(overlay_dir))
		FUNC4("Failed to apply overlay '%s' (kernel)", overlay);
	    else
		ret = 1;

	    FUNC5(dest_file);
	    FUNC1(dtb);
	}

	if (!ret)
		FUNC8(overlay_dir);
    }
    else
    {
	FUNC4("Failed to create overlay directory");
    }

    return ret;
}