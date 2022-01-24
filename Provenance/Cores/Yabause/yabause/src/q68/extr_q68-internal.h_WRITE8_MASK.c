#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* writeb_func ) (int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ Q68State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int Q68_JIT_PAGE_BITS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(Q68State *state, uint32_t addr, uint8_t data) {
    addr &= 0xFFFFFF;
#ifdef Q68_USE_JIT
    if (UNLIKELY(JIT_PAGE_TEST(state, addr >> Q68_JIT_PAGE_BITS))) {
        q68_jit_clear_write(state, addr, 1);
    }
#endif
    state->writeb_func(addr, data);
}