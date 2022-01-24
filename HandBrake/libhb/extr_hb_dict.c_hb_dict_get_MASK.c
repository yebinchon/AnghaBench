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
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,char const*) ; 
 char* FUNC2 (char const*) ; 

hb_value_t * FUNC3(const hb_dict_t * dict, const char * key)
{
    hb_value_t * result;

    // First try case sensitive lookup
    result = FUNC1(dict, key);
    if (result == NULL)
    {
        // If not found, try case insensitive lookup
        char * lower = FUNC2(key);
        result = FUNC1(dict, lower);
        FUNC0(lower);
    }
    return result;
}