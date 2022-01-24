#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ entry_t ;
typedef  int /*<<< orphan*/  config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/  const*,char const*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 

int FUNC3(const config_t *config, const char *section, const char *key, int def_value)
{
    FUNC0(config != NULL);
    FUNC0(section != NULL);
    FUNC0(key != NULL);

    entry_t *entry = FUNC1(config, section, key);
    if (!entry) {
        return def_value;
    }

    char *endptr;
    int ret = FUNC2(entry->value, &endptr, 0);
    return (*endptr == '\0') ? ret : def_value;
}