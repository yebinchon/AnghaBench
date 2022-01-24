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
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int,int) ; 

void FUNC3(uint8_t *dst, const uint8_t *src,
        ptrdiff_t stride)
{
    uint8_t full[336];
    uint8_t * const full_mid= full + 32;
    uint8_t half[256];
    FUNC0(full, src - stride*2, 16,  stride, 21);
    FUNC2(half, full_mid, 16, 16);
    FUNC1(dst, full_mid+16, half, stride, 16, 16, 16);
}