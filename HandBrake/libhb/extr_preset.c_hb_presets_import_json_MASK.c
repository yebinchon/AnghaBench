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
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

int FUNC4(const char *in, char **out)
{
    int result;

    if (out != NULL)
    {
        *out = NULL;
    }
    hb_value_t * dict = FUNC3(in);
    if (dict == NULL)
        return 0;

    hb_value_t * imported;
    result = FUNC0(dict, &imported);
    if (out != NULL)
    {
        *out = FUNC2(imported);
    }
    FUNC1(&dict);
    FUNC1(&imported);
    return result;
}