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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * config ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,char const*,char*,int) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

bool FUNC4(const char *section, const char *key, const uint8_t *value, size_t length)
{
    const char *lookup = "0123456789abcdef";

    FUNC0(config != NULL);
    FUNC0(section != NULL);
    FUNC0(key != NULL);

    if (length > 0) {
        FUNC0(value != NULL);
    }

    char *str = (char *)FUNC2(length * 2 + 1);
    if (!str) {
        return false;
    }

    for (size_t i = 0; i < length; ++i) {
        str[(i * 2) + 0] = lookup[(value[i] >> 4) & 0x0F];
        str[(i * 2) + 1] = lookup[value[i] & 0x0F];
    }

    FUNC1(config, section, key, str, false);

    FUNC3(str);
    return true;
}