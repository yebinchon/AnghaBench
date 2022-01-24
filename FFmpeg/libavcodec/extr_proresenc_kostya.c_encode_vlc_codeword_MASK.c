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
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,int) ; 

__attribute__((used)) static inline void FUNC3(PutBitContext *pb, unsigned codebook, int val)
{
    unsigned int rice_order, exp_order, switch_bits, switch_val;
    int exponent;

    /* number of prefix bits to switch between Rice and expGolomb */
    switch_bits = (codebook & 3) + 1;
    rice_order  =  codebook >> 5;       /* rice code order */
    exp_order   = (codebook >> 2) & 7;  /* exp golomb code order */

    switch_val  = switch_bits << rice_order;

    if (val >= switch_val) {
        val -= switch_val - (1 << exp_order);
        exponent = FUNC0(val);

        FUNC1(pb, exponent - exp_order + switch_bits, 0);
        FUNC1(pb, exponent + 1, val);
    } else {
        exponent = val >> rice_order;

        if (exponent)
            FUNC1(pb, exponent, 0);
        FUNC1(pb, 1, 1);
        if (rice_order)
            FUNC2(pb, rice_order, val);
    }
}