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
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,int) ; 

__attribute__((used)) static void FUNC3(PutBitContext *pb, int val, int codebook)
{
    unsigned int rice_order, exp_order, switch_bits, first_exp, exp, zeros;

    /* number of bits to switch between rice and exp golomb */
    switch_bits = codebook & 3;
    rice_order  = codebook >> 5;
    exp_order   = (codebook >> 2) & 7;

    first_exp = ((switch_bits + 1) << rice_order);

    if (val >= first_exp) { /* exp golomb */
        val -= first_exp;
        val += (1 << exp_order);
        exp = FUNC0(val);
        zeros = exp - exp_order + switch_bits + 1;
        FUNC1(pb, zeros, 0);
        FUNC1(pb, exp + 1, val);
    } else if (rice_order) {
        FUNC1(pb, (val >> rice_order), 0);
        FUNC1(pb, 1, 1);
        FUNC2(pb, rice_order, val);
    } else {
        FUNC1(pb, val, 0);
        FUNC1(pb, 1, 1);
    }
}