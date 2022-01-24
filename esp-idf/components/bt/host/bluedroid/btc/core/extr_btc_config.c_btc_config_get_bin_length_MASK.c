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
 char* FUNC1 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (char const*) ; 

size_t FUNC3(const char *section, const char *key)
{
    FUNC0(config != NULL);
    FUNC0(section != NULL);
    FUNC0(key != NULL);

    const char *value_str = FUNC1(config, section, key, NULL);

    if (!value_str) {
        return 0;
    }

    size_t value_len = FUNC2(value_str);
    return ((value_len % 2) != 0) ? 0 : (value_len / 2);
}