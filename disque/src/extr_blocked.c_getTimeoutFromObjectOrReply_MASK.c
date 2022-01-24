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
typedef  int /*<<< orphan*/  robj ;
typedef  long long mstime_t ;
typedef  int /*<<< orphan*/  client ;

/* Variables and functions */
 int C_ERR ; 
 scalar_t__ C_OK ; 
 int UNIT_SECONDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,long long*,char*) ; 
 scalar_t__ FUNC2 () ; 

int FUNC3(client *c, robj *object, mstime_t *timeout, int unit) {
    long long tval;

    if (FUNC1(c,object,&tval,
        "timeout is not an integer or out of range") != C_OK)
        return C_ERR;

    if (tval < 0) {
        FUNC0(c,"timeout is negative");
        return C_ERR;
    }

    if (tval > 0) {
        if (unit == UNIT_SECONDS) tval *= 1000;
        tval += FUNC2();
    }
    *timeout = tval;

    return C_OK;
}