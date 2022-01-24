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
typedef  int gint ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static gboolean
FUNC5(GhbValue *settings_array, int index)
{
    gint count, ii;
    GhbValue *settings, *gdest;
    const char *dest;

    settings = FUNC0(settings_array, index);
    gdest = FUNC2(settings, "destination");
    dest = FUNC3(gdest);
    if (dest == NULL)
        return FALSE;

    count = FUNC1(settings_array);
    count = count < index ? count : index;
    for (ii = 0; ii < count; ii++)
    {
        const char *tmp;

        settings = FUNC0(settings_array, ii);
        gdest = FUNC2(settings, "destination");
        tmp = FUNC3(gdest);
        if (tmp != NULL && !FUNC4(dest, tmp, PATH_MAX))
            return FALSE;
    }
    return TRUE;
}