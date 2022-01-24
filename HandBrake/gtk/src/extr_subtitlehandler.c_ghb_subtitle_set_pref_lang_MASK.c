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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(GhbValue *settings)
{
    GhbValue *lang_list;
    gboolean set = FALSE;
    lang_list = FUNC2(settings, "SubtitleLanguageList");
    if (FUNC1(lang_list) > 0)
    {
        GhbValue *glang = FUNC0(lang_list, 0);
        if (glang != NULL)
        {
            FUNC3(settings, "PreferredLanguage",
                                    FUNC4(glang));
            set = TRUE;
        }
    }
    if (!set)
    {
        FUNC3(settings, "PreferredLanguage", "und");
    }
}