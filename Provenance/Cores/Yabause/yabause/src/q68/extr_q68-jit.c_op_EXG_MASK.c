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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  Q68State ;

/* Variables and functions */
 int /*<<< orphan*/  INSN_GET_REG ; 
 int /*<<< orphan*/  INSN_GET_REG0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  current_entry ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int reg ; 
 int reg0 ; 

__attribute__((used)) static int FUNC3(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    INSN_GET_REG0;
    const int mode = opcode & 0xF8;

    if (mode == 0x40) {
        FUNC1(current_entry, reg*4, reg0*4);
    } else if (mode == 0x48) {
        FUNC1(current_entry, (8+reg)*4, (8+reg0)*4);
    } else if (mode == 0x88) {
        FUNC1(current_entry, reg*4, (8+reg0)*4);
    } else {
        return FUNC2(state, opcode);
    }
    FUNC0(current_entry, 6);
    return 0;
}