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
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

char * FUNC3(const char *filename)
{
    char *result;
    hb_value_t *preset = FUNC2(filename);
    if (preset == NULL)
        preset = FUNC0(filename);
    if (preset == NULL)
        return NULL;

    result = FUNC1(preset);
    return result;
}