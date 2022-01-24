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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline int FUNC2(intptr_t *object, intptr_t *expected,
                                                 intptr_t desired)
{
    int ret;
    FUNC0();
    if (*object == *expected) {
        ret     = 1;
        *object = desired;
    } else {
        ret = 0;
        *expected = *object;
    }
    FUNC1();
    return ret;
}