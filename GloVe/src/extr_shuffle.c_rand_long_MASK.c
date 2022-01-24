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

/* Variables and functions */
 long LRAND_MAX ; 
 scalar_t__ RAND_MAX ; 
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static long FUNC1(long n) {
    long limit = LRAND_MAX - LRAND_MAX % n;
    long rnd;
    do {
        rnd = ((long)RAND_MAX + 1) * (long)FUNC0() + (long)FUNC0();
    } while (rnd >= limit);
    return rnd % n;
}