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
typedef  int /*<<< orphan*/  hb_value_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  hb_preset_template ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(hb_value_t *preset, int major, int minor, int micro)
{
    int result = 0;

    if (!FUNC2(FUNC1(preset, "Folder")))
    {
        if (FUNC0(major, minor, micro, 0, 0, 0) <= 0)
        {
            // Convert legacy presets (before versioning introduced)
            FUNC3(preset);
            result = 1;
        }
        else if (FUNC0(major, minor, micro, 10, 0, 0) <= 0)
        {
            FUNC4(preset);
            result = 1;
        }
        else if (FUNC0(major, minor, micro, 11, 0, 0) <= 0)
        {
            FUNC5(preset);
            result = 1;
        }
        else if (FUNC0(major, minor, micro, 11, 1, 0) <= 0)
        {
            FUNC6(preset);
            result = 1;
        }
        else if (FUNC0(major, minor, micro, 12, 0, 0) <= 0)
        {
            FUNC7(preset);
            result = 1;
        }
        else if (FUNC0(major, minor, micro, 20, 0, 0) <= 0)
        {
            FUNC8(preset);
            result = 1;
        }
        else if (FUNC0(major, minor, micro, 25, 0, 0) <= 0)
        {
            FUNC9(preset);
            result = 1;
        }
        else if (FUNC0(major, minor, micro, 35, 0, 0) <= 0)
        {
            FUNC10(preset);
            result = 1;
        }
        FUNC11(preset, hb_preset_template);
    }
    return result;
}