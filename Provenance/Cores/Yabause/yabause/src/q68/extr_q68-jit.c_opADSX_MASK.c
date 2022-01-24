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
 int /*<<< orphan*/  INSN_GET_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ SIZE_B ; 
 scalar_t__ SIZE_L ; 
 scalar_t__ SIZE_W ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  current_entry ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int const,scalar_t__,int,int*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int const,scalar_t__) ; 
 int reg ; 
 int reg0 ; 
 scalar_t__ size ; 

__attribute__((used)) static int FUNC16(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    INSN_GET_SIZE;
    INSN_GET_REG0;
    const int is_add = opcode & 0x4000;
    const int is_memory = opcode & 0x0008;

    const uint16_t src_ea =
        (is_memory ? EA_PREDECREMENT : EA_DATA_REG) << 3 | reg0;
    const uint16_t dest_ea =
        (is_memory ? EA_PREDECREMENT : EA_DATA_REG) << 3 | reg;
    int dummy;
    FUNC14(state, src_ea,  size, 0, &dummy, 1);
    FUNC14(state, dest_ea, size, 1, &dummy, 2);

    const int do_cc = FUNC13(state, opcode);
    if (is_add) {
        if (size == SIZE_B) {
            FUNC0(current_entry);
            if (do_cc) FUNC4(current_entry);
        } else if (size == SIZE_W) {
            FUNC2(current_entry);
            if (do_cc) FUNC6(current_entry);
        } else {  // size == SIZE_L
            FUNC1(current_entry);
            if (do_cc) FUNC5(current_entry);
        }
    } else {
        if (size == SIZE_B) {
            FUNC10(current_entry);
            if (do_cc) FUNC7(current_entry);
        } else if (size == SIZE_W) {
            FUNC12(current_entry);
            if (do_cc) FUNC9(current_entry);
        } else {  // size == SIZE_L
            FUNC11(current_entry);
            if (do_cc) FUNC8(current_entry);
        }
    }

    FUNC15(state, dest_ea, size);
    FUNC3(current_entry, (is_memory ? (size==SIZE_L ? 30 : 18)
                                                  : (size==SIZE_L ?  8 :  4)));
    return 0;
}