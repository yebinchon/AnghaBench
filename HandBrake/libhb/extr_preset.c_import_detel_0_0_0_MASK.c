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
 int /*<<< orphan*/  HB_FILTER_DETELECINE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(hb_value_t *preset)
{
    hb_value_t *val = FUNC0(preset, "PictureDetelecine");
    if (FUNC4(val))
    {
        const char *s;
        int index = FUNC3(val);
        s = FUNC6(HB_FILTER_DETELECINE, index);
        if (s != NULL)
        {
            FUNC1(preset, "PictureDetelecine", FUNC5(s));
        }
        else
        {
            FUNC2("Invalid detelecine index %d", index);
            FUNC1(preset, "PictureDetelecine", FUNC5("off"));
        }
    }
}