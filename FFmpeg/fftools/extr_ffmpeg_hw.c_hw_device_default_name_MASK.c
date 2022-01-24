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
typedef  enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,char const*,int) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static char *FUNC6(enum AVHWDeviceType type)
{
    // Make an automatic name of the form "type%d".  We arbitrarily
    // limit at 1000 anonymous devices of the same type - there is
    // probably something else very wrong if you get to this limit.
    const char *type_name = FUNC1(type);
    char *name;
    size_t index_pos;
    int index, index_limit = 1000;
    index_pos = FUNC5(type_name);
    name = FUNC2(index_pos + 4);
    if (!name)
        return NULL;
    for (index = 0; index < index_limit; index++) {
        FUNC4(name, index_pos + 4, "%s%d", type_name, index);
        if (!FUNC3(name))
            break;
    }
    if (index >= index_limit) {
        FUNC0(&name);
        return NULL;
    }
    return name;
}