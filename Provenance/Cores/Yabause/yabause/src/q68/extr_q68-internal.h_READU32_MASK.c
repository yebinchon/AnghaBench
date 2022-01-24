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
struct TYPE_3__ {int (* readw_func ) (int) ;} ;
typedef  TYPE_1__ Q68State ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline uint32_t FUNC2(Q68State *state, uint32_t addr) {
    addr &= 0xFFFFFF;
    uint32_t value = state->readw_func(addr) << 16;
    addr += 2;
    addr &= 0xFFFFFF;
    value |= state->readw_func(addr);
    return value;
}