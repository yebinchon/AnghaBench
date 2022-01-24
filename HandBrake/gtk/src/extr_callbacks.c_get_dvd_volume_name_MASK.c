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
typedef  int /*<<< orphan*/  gpointer ;
typedef  int /*<<< orphan*/  gchar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  volname_hash ; 
 int /*<<< orphan*/  volname_mutex ; 

__attribute__((used)) static gchar*
FUNC9(gpointer gd)
{
    gchar *label = NULL;
    gchar *result;
    gchar *drive;

    drive = FUNC7(gd);
    FUNC3(volname_mutex);
    label = FUNC5(FUNC2(volname_hash, drive));
    FUNC4(volname_mutex);
    if (label != NULL)
    {
        if (FUNC8(label))
        {
            FUNC0(label);
        }
#if defined(_WIN32)
        result = g_strdup_printf("%s (%s)", label, drive);
#else
        result = FUNC6("%s - %s", drive, label);
#endif
        FUNC1(label);
    }
    else
    {
        result = FUNC6("%s", drive);
    }
    FUNC1(drive);
    return result;
}