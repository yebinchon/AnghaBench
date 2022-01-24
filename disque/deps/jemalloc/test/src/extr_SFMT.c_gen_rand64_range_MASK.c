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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  sfmt_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

uint64_t FUNC2(sfmt_t *ctx, uint64_t limit) {
    uint64_t ret, above;

    above = FUNC0(0xffffffffffffffff) - (FUNC0(0xffffffffffffffff) % limit);
    while (1) {
	ret = FUNC1(ctx);
	if (ret < above) {
	    ret %= limit;
	    break;
	}
    }
    return ret;
}