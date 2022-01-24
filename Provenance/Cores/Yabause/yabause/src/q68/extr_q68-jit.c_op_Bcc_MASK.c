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
typedef  int uint32_t ;
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ int16_t ;
struct TYPE_5__ {int current_PC; } ;
typedef  TYPE_1__ Q68State ;

/* Variables and functions */
 scalar_t__ COND_EQ ; 
 scalar_t__ COND_F ; 
 scalar_t__ COND_PL ; 
 scalar_t__ COND_T ; 
 int FAULT_STATUS_IN_DATA ; 
 int FAULT_STATUS_RW_WRITE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  INSN_GET_COND ; 
 int /*<<< orphan*/  INSN_GET_DISP8 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ cond ; 
 int /*<<< orphan*/  current_entry ; 
 scalar_t__ disp ; 
 int /*<<< orphan*/  jit_PC ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC10(Q68State *state, uint32_t opcode)
{
    INSN_GET_COND;
    INSN_GET_DISP8;
    int cycles = 0;
    if (disp == 0) {
        disp = (int16_t)FUNC0(state);
        cycles = 4;
    }
    uint32_t target = state->current_PC + disp;
    if (cond == COND_F) {
        /* BF is really BSR */
#ifndef Q68_DISABLE_ADDRESS_ERROR
        FUNC5(current_entry, opcode,
                                  FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_WRITE);
#endif
        FUNC1(current_entry, 18);
        FUNC7(state);
        FUNC2(current_entry, jit_PC, target);
        return 0;
    } else {
        int32_t offset;
#ifdef Q68_OPTIMIZE_IDLE
        /* FIXME: Temporary hack to improve PSP performance */
        if (target == 0x1066
         && ((cond == COND_EQ && state->current_PC - 2 == 0x001092)
          || (cond == COND_PL && state->current_PC - 2 == 0x0010B4))
        ) {
            /* BIOS intro animation */
            JIT_EMIT_ADD_CYCLES(current_entry,
                                468);  // Length of one loop when idle
        } else if (target == 0x10BC
                && ((cond == COND_PL && state->current_PC - 2 == 0x001122)
                 || (cond == COND_T  && state->current_PC - 2 == 0x00116A))
        ) {
            /* Azel: Panzer Dragoon RPG (JP) */
            JIT_EMIT_ADD_CYCLES(current_entry, 
                                178*4);  // Assuming a cycle_limit of 768
        }
#endif
        if (target < state->current_PC) {
            offset = FUNC8(target);
        } else {
            offset = -1;  // Forward jumps can't be in the cache
        }
        FUNC6(cond, current_entry);
        if (offset >= 0) {
            FUNC4(current_entry, target, offset);
        } else {
            int32_t branch_offset;
            FUNC3(current_entry, target, &branch_offset);
            if (target >= state->current_PC && branch_offset >= 0) {
                FUNC9(target, branch_offset);
            }
        }
        FUNC1(current_entry, 8 + cycles);
        return 0;
    }
}