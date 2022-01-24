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
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static gboolean FUNC4(GhbValue *settings)
{
    GhbValue *subtitle_list, *subsettings;
    int count, ii;

    subtitle_list = FUNC3(settings);
    if (subtitle_list == NULL)
        return FALSE;

    count = FUNC1(subtitle_list);
    for (ii = 0; ii < count; ii++)
    {
        subsettings = FUNC0(subtitle_list, ii);
        if (FUNC2(subsettings, "Burn"))
        {
            return TRUE;
        }
    }
    return FALSE;
}