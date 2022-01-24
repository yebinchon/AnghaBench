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
struct TYPE_3__ {scalar_t__ test_func; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* tests ; 

int FUNC1(int argc, char *argv[])
{
    int i, ret, ret_all = 0;

    for (i = 0; tests[i].test_func; i++) {
        ret = FUNC0(&tests[i]);
        if (!ret_all && ret < 0)
            ret_all = ret;
    }

    return ret;
}