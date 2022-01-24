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
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  DCAEncContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__ const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static inline int32_t FUNC2(DCAEncContext *c, const int32_t *in, int len)
{
    int sample;
    int32_t m = 0;
    for (sample = 0; sample < len; sample++) {
        int32_t s = FUNC0(in[sample]);
        if (m < s)
            m = s;
    }
    return FUNC1(c, m);
}