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
typedef  int /*<<< orphan*/  value_str ;
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  config ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 

bool FUNC4(const char *section, const char *key_type, void *key_value, int key_length)
{
    FUNC0(key_value != NULL);
    bool status = false;
    char value_str[100] = {0};
    if(key_length > sizeof(value_str)/2) {
        return false;
    }
    FUNC1((uint8_t *)key_value, value_str, key_length);
    if ((status = FUNC2(config, key_type, value_str)) == true) {
        FUNC3(config, section);
    }
    return status;
}