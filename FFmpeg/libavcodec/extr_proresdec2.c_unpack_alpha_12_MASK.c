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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static void FUNC1(GetBitContext *gb, uint16_t *dst, int num_coeffs,
                            const int num_bits)
{
    if (num_bits == 16) {
        FUNC0(gb, dst, num_coeffs, 16, 12);
    } else { /* 8 bits alpha */
        FUNC0(gb, dst, num_coeffs, 8, 12);
    }
}