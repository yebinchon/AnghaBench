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
typedef  int /*<<< orphan*/  client ;

/* Variables and functions */
 int C_ERR ; 
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,long double*) ; 

int FUNC2(client *c, robj *o, long double *target, const char *msg) {
    long double value;
    if (FUNC1(o, &value) != C_OK) {
        if (msg != NULL) {
            FUNC0(c,(char*)msg);
        } else {
            FUNC0(c,"value is not a valid float");
        }
        return C_ERR;
    }
    *target = value;
    return C_OK;
}