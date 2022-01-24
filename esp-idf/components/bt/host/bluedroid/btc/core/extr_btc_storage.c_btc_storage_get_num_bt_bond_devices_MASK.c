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
typedef  int /*<<< orphan*/  btc_config_section_iter_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_STORAGE_LINK_KEY_STR ; 
 int /*<<< orphan*/  BTC_STORAGE_LINK_KEY_TYPE_STR ; 
 int /*<<< orphan*/  BTC_STORAGE_PIN_LENGTH_STR ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  const* FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (char const*) ; 

int FUNC8(void)
{
    int num_dev = 0;

    FUNC1();
    for (const btc_config_section_iter_t *iter = FUNC2(); iter != FUNC3();
            iter = FUNC5(iter)) {
        const char *name = FUNC4(iter);
        if (FUNC7(name) &&
            FUNC0(name, BTC_STORAGE_LINK_KEY_TYPE_STR) &&
            FUNC0(name, BTC_STORAGE_PIN_LENGTH_STR) &&
            FUNC0(name, BTC_STORAGE_LINK_KEY_STR)) {
            num_dev++;
        }
    }
    FUNC6();

    return num_dev;
}