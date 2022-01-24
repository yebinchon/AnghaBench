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
struct TYPE_3__ {int /*<<< orphan*/  entries; } ;
typedef  TYPE_1__ section_t ;
typedef  int /*<<< orphan*/  entry_t ;
typedef  int /*<<< orphan*/  config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,char const*) ; 

bool FUNC4(config_t *config, const char *section, const char *key)
{
    FUNC0(config != NULL);
    FUNC0(section != NULL);
    FUNC0(key != NULL);

    section_t *sec = FUNC3(config, section);
    entry_t *entry = FUNC1(config, section, key);
    if (!sec || !entry) {
        return false;
    }

    return FUNC2(sec->entries, entry);
}