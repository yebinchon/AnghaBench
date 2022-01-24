#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int range; int low; } ;
typedef  TYPE_1__ RangeCoder ;

/* Variables and functions */
 scalar_t__ RAC_BOTTOM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC1(RangeCoder *c, int nbits)
{
    int val;

    c->range >>= nbits;
    val = c->low / c->range;
    c->low -= c->range * val;

    if (c->range < RAC_BOTTOM)
        FUNC0(c);

    return val;
}