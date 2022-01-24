#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* str; } ;
typedef  TYPE_1__ AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 char** test_cases ; 

int FUNC6(void)
{
    int i;
    AVBPrint dst;

    FUNC3(&dst, 0, AV_BPRINT_SIZE_UNLIMITED);
    for (i = 0; i < FUNC0(test_cases); i++) {
        int ret = FUNC4(NULL, &dst, test_cases[i]);
        if (ret < 0)
            return ret;
        FUNC5("%s --> %s\n", test_cases[i], dst.str);
        FUNC1(&dst);
    }
    FUNC2(&dst, NULL);
    return 0;
}