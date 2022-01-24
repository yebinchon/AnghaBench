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
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int FUNC10 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(hb_value_t *preset)
{
    if (FUNC2(FUNC0(preset, "UsesMaxPictureSettings")))
    {
        // UsesMaxPictureSettings was deprecated
        FUNC1(preset, "UsesPictureSettings", FUNC5(2));
    }

    hb_value_t *val = FUNC0(preset, "PicturePAR");
    if (FUNC6(val))
    {
        const char *s;
        int pic_par = FUNC3(val);
        switch (pic_par)
        {
            default:
            case 0:
                s = "off";
                break;
            case 1:
                s = "strict";
                break;
            case 2:
                s = "loose";
                break;
            case 3:
                s = "custom";
                break;
        }
        FUNC1(preset, "PicturePAR", FUNC7(s));
    }
    else if (FUNC8(val) == HB_VALUE_TYPE_STRING)
    {
        const char *v = FUNC4(val);
        const char *s;
        char *end;
        int pic_par = FUNC10(v, &end, 0);
        if (end != v)
        {
            switch (pic_par)
            {
                default:
                case 2:
                    s = "loose";
                    break;
                case 0:
                    s = "off";
                    break;
                case 1:
                    s = "strict";
                    break;
                case 3:
                    s = "custom";
                    break;
            }
            FUNC1(preset, "PicturePAR", FUNC7(s));
        }
        else
        {
            if (FUNC9(v, "off") &&
                FUNC9(v, "strict") &&
                FUNC9(v, "loose") &&
                FUNC9(v, "custom"))
            {
                FUNC1(preset, "PicturePAR", FUNC7("loose"));
            }
        }
    }
}