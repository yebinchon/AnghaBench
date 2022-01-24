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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * config ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 

bool FUNC3(const char *section, const char *key, int *value)
{
    FUNC0(config != NULL);
    FUNC0(section != NULL);
    FUNC0(key != NULL);
    FUNC0(value != NULL);

    bool ret = FUNC2(config, section, key);
    if (ret) {
        *value = FUNC1(config, section, key, *value);
    }

    return ret;
}