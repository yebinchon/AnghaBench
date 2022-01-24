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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  Q68State ;

/* Variables and functions */
 int EA_DATA_REG ; 
 int EA_PREDECREMENT ; 
 int /*<<< orphan*/  INSN_GET_REG ; 
 int /*<<< orphan*/  INSN_GET_REG0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIZE_B ; 
 int /*<<< orphan*/  current_entry ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ) ; 
 int reg ; 
 int reg0 ; 

__attribute__((used)) static int FUNC5(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    INSN_GET_REG0;
    const int is_add = opcode & 0x4000;
    const int is_memory = opcode & 0x0008;

    const uint16_t src_ea =
        (is_memory ? EA_PREDECREMENT : EA_DATA_REG) << 3 | reg0;
    const uint16_t dest_ea =
        (is_memory ? EA_PREDECREMENT : EA_DATA_REG) << 3 | reg;
    int dummy;
    FUNC3(state, src_ea,  SIZE_B, 0, &dummy, 1);
    FUNC3(state, dest_ea, SIZE_B, 1, &dummy, 2);

    if (is_add) {
        FUNC0(current_entry);
    } else {
        FUNC2(current_entry);
    }

    FUNC4(state, dest_ea, SIZE_B);
    FUNC1(current_entry, is_memory ? 18 : 6);
    return 0;
}