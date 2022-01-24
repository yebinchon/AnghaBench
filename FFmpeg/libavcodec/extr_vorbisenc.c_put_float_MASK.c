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
typedef  unsigned int uint32_t ;
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC3(PutBitContext *pb, float f)
{
    int exp, mant;
    uint32_t res = 0;
    mant = (int)FUNC1(FUNC0(f, &exp), 20);
    exp += 788 - 20;
    if (mant < 0) {
        res |= (1U << 31);
        mant = -mant;
    }
    res |= mant | (exp << 21);
    FUNC2(pb, res);
}