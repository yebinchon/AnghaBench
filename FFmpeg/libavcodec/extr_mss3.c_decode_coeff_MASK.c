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
typedef  int /*<<< orphan*/  RangeCoder ;
typedef  int /*<<< orphan*/  Model ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(RangeCoder *c, Model *m)
{
    int val, sign;

    val = FUNC2(c, m);
    if (val) {
        sign = FUNC0(c);
        if (val > 1) {
            val--;
            val = (1 << val) + FUNC1(c, val);
        }
        if (!sign)
            val = -val;
    }

    return val;
}