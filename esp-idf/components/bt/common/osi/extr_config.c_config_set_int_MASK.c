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
typedef  int /*<<< orphan*/  config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

void FUNC3(config_t *config, const char *section, const char *key, int value)
{
    FUNC0(config != NULL);
    FUNC0(section != NULL);
    FUNC0(key != NULL);

    char value_str[32] = { 0 };
    FUNC2(value_str, "%d", value);
    FUNC1(config, section, key, value_str, false);
}