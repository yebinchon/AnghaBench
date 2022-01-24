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
typedef  int int64_t ;

/* Variables and functions */
 int YUVRGB_TABLE_HEADROOM ; 
 int const FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(int table[256 + 2*YUVRGB_TABLE_HEADROOM], const int elemsize, const int64_t inc)
{
    int i;
    int off    = -(inc >> 9);

    for (i = 0; i < 256 + 2*YUVRGB_TABLE_HEADROOM; i++) {
        int64_t cb = FUNC0(i-YUVRGB_TABLE_HEADROOM)*inc;
        table[i] = elemsize * (off + (cb >> 16));
    }
}