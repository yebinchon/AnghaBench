#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_7__ {int SR; int /*<<< orphan*/  exception; } ;
typedef  TYPE_1__ Q68State ;

/* Variables and functions */
 scalar_t__ EA_ADDRESS_REG ; 
 scalar_t__ EA_DATA_REG ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  EX_PRIVILEGE_VIOLATION ; 
 int /*<<< orphan*/  SIZE_W ; 
 int SR_S ; 
 int FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC5(Q68State *state, uint32_t opcode)
{
    int is_CCR;
    int ea_dest;
    int cycles;
    switch (opcode>>9 & 3) {
      case 0:  // MOVE SR,<ea>
        is_CCR = 0;
        ea_dest = 1;
        cycles = (FUNC0(opcode) == EA_DATA_REG) ? 6 : 8;
        break;
      case 1:  // Undefined (MOVE CCR,<ea> on 68010)
        return FUNC3(state, opcode);
      case 2:  // MOVE <ea>,CCR
        is_CCR = 1;
        ea_dest = 0;
        cycles = 12;
        break;
      default: // MOVE <ea>,SR (case 3)
        if (!(state->SR & SR_S)) {
            state->exception = EX_PRIVILEGE_VIOLATION;
            return 0;
        }
        is_CCR = 0;
        ea_dest = 0;
        cycles = 12;
        break;
    }

    if (FUNC0(opcode) == EA_ADDRESS_REG) {  // Address registers not allowed
        return FUNC3(state, opcode);
    }

    /* Motorola docs say the address is read before being written, even
     * for the SR,<ea> format; also, the access size is a word even for
     * CCR operations. */
    int cycles_tmp;
    uint16_t value = FUNC1(state, opcode, SIZE_W, ea_dest, &cycles_tmp);
    if (cycles_tmp < 0) {
        return 0;
    }
    cycles += cycles_tmp;

    if (ea_dest) {
        uint16_t value = state->SR;
        if (is_CCR) {
            value &= 0x00FF;
        }
        FUNC2(state, opcode, SIZE_W, value);
    } else {
        if (!is_CCR) {
            FUNC4(state, value);
        }
    }
    return cycles;
}