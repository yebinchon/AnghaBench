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
typedef  char gchar ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 void* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * prefsDict ; 
 int /*<<< orphan*/  prefs_modified ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(GhbValue *settings, const gchar *key)
{
    const GhbValue *value, *value2;

    value = FUNC1(settings, key);
    if (value != NULL)
    {
        GhbValue *dict;
        dict = FUNC0(prefsDict, "Preferences");
        if (dict == NULL) return;
        value2 = FUNC0(dict, key);
        if (FUNC3(value, value2) != 0)
        {
            FUNC2(dict, key, FUNC4(value));
            FUNC5();
            prefs_modified = FALSE;
        }
    }
}