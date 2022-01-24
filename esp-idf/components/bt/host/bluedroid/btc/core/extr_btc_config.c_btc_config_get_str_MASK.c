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
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char*) ; 

bool FUNC4(const char *section, const char *key, char *value, int *size_bytes)
{
    FUNC0(config != NULL);
    FUNC0(section != NULL);
    FUNC0(key != NULL);
    FUNC0(value != NULL);
    FUNC0(size_bytes != NULL);

    const char *stored_value = FUNC1(config, section, key, NULL);

    if (!stored_value) {
        return false;
    }

    FUNC2(value, stored_value, *size_bytes);
    *size_bytes = FUNC3(value) + 1;

    return true;
}