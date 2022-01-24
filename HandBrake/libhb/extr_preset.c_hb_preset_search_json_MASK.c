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
 int /*<<< orphan*/ * FUNC0 (char const*,int,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 

char * FUNC2(const char *name, int recurse, int type)
{
    hb_value_t * preset;
    char *json;
    preset = FUNC0(name, recurse, type);
    if (preset == NULL)
        return NULL;
    json = FUNC1(preset);
    return json;
}