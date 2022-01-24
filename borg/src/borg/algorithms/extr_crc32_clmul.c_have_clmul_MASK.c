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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static int
FUNC1(void)
{
    unsigned eax, ebx, ecx, edx;
    int has_pclmulqdq;
    int has_sse41;
    FUNC0(1 /* feature bits */, &eax, &ebx, &ecx, &edx);

    has_pclmulqdq = ecx & 0x2; /* bit 1 */
    has_sse41 = ecx & 0x80000; /* bit 19 */

    return has_pclmulqdq && has_sse41;
}