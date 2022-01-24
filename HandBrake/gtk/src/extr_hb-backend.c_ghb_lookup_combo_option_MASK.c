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
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  GHB_STRING ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

char*
FUNC4(const gchar *name, const GhbValue *gval)
{
    if (gval == NULL)
        return NULL;
    GhbValue *gresult = FUNC3(name, gval, GHB_STRING);
    const char *tmp = FUNC2(gresult);
    char *result = NULL;
    if (tmp != NULL)
    {
        result = FUNC0(tmp);
    }
    FUNC1(&gresult);
    return result;
}