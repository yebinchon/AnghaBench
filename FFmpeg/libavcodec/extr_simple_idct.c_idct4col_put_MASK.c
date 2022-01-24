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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;
typedef  int int16_t ;

/* Variables and functions */
 int C1 ; 
 int C2 ; 
 int CN_SHIFT ; 
 int C_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline void FUNC1(uint8_t *dest, ptrdiff_t line_size, const int16_t *col)
{
    int c0, c1, c2, c3, a0, a1, a2, a3;

    a0 = col[8*0];
    a1 = col[8*2];
    a2 = col[8*4];
    a3 = col[8*6];
    c0 = ((a0 + a2) * (1 << (CN_SHIFT - 1))) + (1 << (C_SHIFT - 1));
    c2 = ((a0 - a2) * (1 << (CN_SHIFT - 1))) + (1 << (C_SHIFT - 1));
    c1 = a1 * C1 + a3 * C2;
    c3 = a1 * C2 - a3 * C1;
    dest[0] = FUNC0((c0 + c1) >> C_SHIFT);
    dest += line_size;
    dest[0] = FUNC0((c2 + c3) >> C_SHIFT);
    dest += line_size;
    dest[0] = FUNC0((c2 - c3) >> C_SHIFT);
    dest += line_size;
    dest[0] = FUNC0((c0 - c1) >> C_SHIFT);
}