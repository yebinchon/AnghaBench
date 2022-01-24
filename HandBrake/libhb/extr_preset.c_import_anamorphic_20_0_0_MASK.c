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
 scalar_t__ HB_VALUE_TYPE_STRING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static void FUNC7(hb_value_t *preset)
{
    hb_value_t *val = FUNC0(preset, "PicturePAR");
    if (FUNC5(val) == HB_VALUE_TYPE_STRING)
    {
        const char *s = FUNC2(val);
        if (!FUNC6(s, "strict"))
        {
            FUNC1(preset, "PicturePAR", FUNC4("loose"));
            FUNC1(preset, "UsesPictureSettings", FUNC3(2));
            FUNC1(preset, "PictureModulus", FUNC3(2));
        }
    }
}