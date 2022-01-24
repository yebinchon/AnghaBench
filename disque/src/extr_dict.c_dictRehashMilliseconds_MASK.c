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
typedef  int /*<<< orphan*/  dict ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 long long FUNC1 () ; 

int FUNC2(dict *d, int ms) {
    long long start = FUNC1();
    int rehashes = 0;

    while(FUNC0(d,100)) {
        rehashes += 100;
        if (FUNC1()-start > ms) break;
    }
    return rehashes;
}