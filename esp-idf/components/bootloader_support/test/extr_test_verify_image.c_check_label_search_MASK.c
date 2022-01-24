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
typedef  int /*<<< orphan*/  label ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

void FUNC4 (int num_test, const char *list, const char *t_label, bool result)
{
    // gen_esp32part.py trims up to 16 characters
    // and the string may not have a null terminal symbol.
    // below is cutting as it does the generator.
    char label[16 + 1] = {0};
    FUNC3(label, t_label, sizeof(label) - 1);

    bool ret = FUNC1(list, label);
    if (ret != result) {
        FUNC2("%d) %s  |  %s \n", num_test, list, label);
    }
    FUNC0(ret == result, "Test failed");
}