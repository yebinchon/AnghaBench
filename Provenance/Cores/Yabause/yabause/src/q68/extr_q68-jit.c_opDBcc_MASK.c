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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__ current_PC; } ;
typedef  TYPE_1__ Q68State ;

/* Variables and functions */
 int /*<<< orphan*/  INSN_GET_COND ; 
 int /*<<< orphan*/  INSN_GET_IMM16 ; 
 int /*<<< orphan*/  INSN_GET_REG0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  cond ; 
 int /*<<< orphan*/  current_entry ; 
 scalar_t__ imm16 ; 
 int reg0 ; 

__attribute__((used)) static int FUNC4(Q68State *state, uint32_t opcode)
{
    INSN_GET_COND;
    INSN_GET_REG0;
    INSN_GET_IMM16;
    uint32_t target = state->current_PC + imm16;
    int32_t offset = FUNC3(target);
    FUNC2(cond, current_entry);
    if (offset >= 0) {
        FUNC1(current_entry, reg0*4, target, offset);
    } else {
        FUNC0(current_entry, reg0*4, target);
    }
    return 0;
}