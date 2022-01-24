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
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ *** bitalloc_bits ; 
 int /*<<< orphan*/ *** bitalloc_codes ; 
 size_t* bitalloc_offsets ; 
 size_t* bitalloc_sizes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(PutBitContext *pb, int *values, uint8_t n, uint8_t sel, uint8_t table)
{
    uint8_t i, id;
    for (i = 0; i < n; i++) {
        id = values[i] - bitalloc_offsets[table];
        FUNC0(id < bitalloc_sizes[table]);
        FUNC1(pb, bitalloc_bits[table][sel][id], bitalloc_codes[table][sel][id]);
    }
}