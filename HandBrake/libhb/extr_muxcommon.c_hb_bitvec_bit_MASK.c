#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int size; int* vec; } ;
typedef  TYPE_1__ hb_bitvec_t ;

/* Variables and functions */

__attribute__((used)) static int FUNC0(hb_bitvec_t *bv, int n)
{
    if (n >= bv->size)
        return 0; // Error.  Should never happen.

    int word = n >> 5;
    uint32_t bit = 1 << (n & 0x1F);
    return !!(bv->vec[word] & bit);
}