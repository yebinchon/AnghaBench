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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  OpusRangeCoder ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int const) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 

void FUNC4(OpusRangeCoder *rc, uint32_t val, uint32_t size)
{
    const int ps = FUNC0(FUNC2(size - 1) - 8, 0);
    FUNC3(rc, val >> ps, (val >> ps) + 1, ((size - 1) >> ps) + 1, 0);
    FUNC1(rc, val, ps);
}