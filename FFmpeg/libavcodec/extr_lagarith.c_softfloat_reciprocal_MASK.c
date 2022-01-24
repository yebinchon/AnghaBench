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
typedef  int uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static uint64_t FUNC1(uint32_t denom)
{
    int shift = FUNC0(denom - 1) + 1;
    uint64_t ret = (1ULL << 52) / denom;
    uint64_t err = (1ULL << 52) - ret * denom;
    ret <<= shift;
    err <<= shift;
    err +=  denom / 2;
    return ret + err / denom;
}