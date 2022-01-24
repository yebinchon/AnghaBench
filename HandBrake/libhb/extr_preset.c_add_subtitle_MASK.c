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
typedef  int /*<<< orphan*/  hb_value_array_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(hb_value_array_t *list, int track,
                         int make_default, int force, int burn,
                         const char * name)
{
    hb_dict_t *subtitle_dict = FUNC0();
    FUNC2(subtitle_dict, "Track", track);
    FUNC1(subtitle_dict, "Default", make_default);
    FUNC1(subtitle_dict, "Forced", force);
    FUNC1(subtitle_dict, "Burn", burn);
    if (name != NULL && name[0] != 0)
    {
        FUNC3(subtitle_dict, "Name", name);
    }
    FUNC4(list, subtitle_dict);
}