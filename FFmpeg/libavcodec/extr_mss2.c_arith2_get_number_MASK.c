#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int high; int low; int value; } ;
typedef  TYPE_1__ ArithCoder ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int,int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(ArithCoder *c, int n)
{
    int range = c->high - c->low + 1;
    int scale = FUNC3(range) - FUNC3(n);
    int val;

    if (n << scale > range)
        scale--;

    n <<= scale;

    val = FUNC0(c->value - c->low, n, range) >> scale;

    FUNC2(c, range, val << scale, (val + 1) << scale, n);

    FUNC1(c);

    return val;
}