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
struct TYPE_5__ {int SR; } ;
typedef  TYPE_1__ Q68State ;

/* Variables and functions */
 scalar_t__ EA_ADDRESS_REG ; 
 scalar_t__ EA_INDIRECT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INSN_GET_COUNT ; 
 int /*<<< orphan*/  INSN_GET_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SIZE_L ; 
 int FUNC3 (int) ; 
 int SR_C ; 
 int SR_V ; 
 int SR_X ; 
 int count ; 
 int FUNC4 (TYPE_1__*,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int) ; 
 int size ; 

__attribute__((used)) static int FUNC6(Q68State *state, uint32_t opcode)
{
    const int is_sub = opcode & 0x0100;
    INSN_GET_COUNT;
    INSN_GET_SIZE;
    if (FUNC0(opcode) == EA_ADDRESS_REG && size == 1) {
        size = 2;  // ADDQ.W #imm,An is equivalent to ADDQ.L #imm,An
    }
    const int bytes = FUNC3(size);
    const int shift = bytes*8 - 1;
    const uint32_t valuemask = ~(~1 << shift);
    int cycles;
    uint32_t data = FUNC4(state, opcode, size, 1, &cycles);
    if (cycles < 0) {
        return 0;
    }

    uint32_t result;
    if (is_sub) {
        result = data - count;
    } else {
        result = data + count;
    }
    result &= valuemask;
    if (FUNC0(opcode) != EA_ADDRESS_REG) {
        FUNC1();
        FUNC2(result);
        if ((is_sub ? ~result & data : result & ~data) >> shift) {
            state->SR |= SR_V;
        }
        if ((is_sub ? result & ~data : ~result & data) >> shift) {
            state->SR |= SR_X | SR_C;
        }
    }
    
    FUNC5(state, opcode, size, result);
    return (size==SIZE_L || FUNC0(opcode) == EA_ADDRESS_REG ? 8 : 4)
           + (FUNC0(opcode) >= EA_INDIRECT ? 4 : 0) + cycles;
}