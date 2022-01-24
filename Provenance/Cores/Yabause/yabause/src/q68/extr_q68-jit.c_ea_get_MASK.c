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
 int /*<<< orphan*/  ACCESS_MODIFY ; 
 int /*<<< orphan*/  ACCESS_READ ; 
#define  EA_ADDRESS_REG 130 
#define  EA_DATA_REG 129 
#define  EA_MISC 128 
 int EA_MISC_IMMEDIATE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  EX_ILLEGAL_INSTRUCTION ; 
 int FAULT_STATUS_IN_DATA ; 
 int FAULT_STATUS_RW_READ ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int SIZE_B ; 
 int SIZE_L ; 
 int SIZE_W ; 
 int /*<<< orphan*/  current_entry ; 
 int FUNC13 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(Q68State *state, uint32_t opcode, int size,
                   int is_rmw, int *cycles_ret, int op_num)
{
    switch (FUNC0(opcode)) {

      case EA_DATA_REG:
        *cycles_ret = 0;
        if (op_num == 1) {
            FUNC8(current_entry, FUNC1(opcode) * 4);
        } else {
            FUNC12(current_entry, FUNC1(opcode) * 4);
        }
        break;

      case EA_ADDRESS_REG:
        *cycles_ret = 0;
        if (size == SIZE_B) {
            /* An.b not permitted */
            FUNC14(state, EX_ILLEGAL_INSTRUCTION);
            *cycles_ret = -1;
            return;
        } else {
            if (op_num == 1) {
                FUNC8(current_entry,
                                          (8 + FUNC1(opcode)) * 4);
            } else {
                FUNC12(current_entry,
                                          (8 + FUNC1(opcode)) * 4);
            }
        }
        break;

      case EA_MISC:
        if (FUNC1(opcode) == EA_MISC_IMMEDIATE) {
            if (is_rmw) {
                FUNC14(state, EX_ILLEGAL_INSTRUCTION);
                *cycles_ret = -1;
                return;
            } else {
                *cycles_ret = (size==SIZE_L ? 8 : 4);
                uint32_t val;
                val = FUNC2(state);
                if (size == SIZE_B) {
                    val &= 0xFF;
                } else if (size == SIZE_L) {
                    val <<= 16;
                    val |= (uint16_t)FUNC2(state);
                }
                if (op_num == 1) {
                    FUNC7(current_entry, val);
                } else {
                    FUNC7(current_entry, val);
                }
            }
            break;
        }
        /* else fall through */

      default:
        *cycles_ret = FUNC13(state, opcode, size,
                                 is_rmw ? ACCESS_MODIFY : ACCESS_READ);
        if (*cycles_ret < 0) {
            FUNC14(state, EX_ILLEGAL_INSTRUCTION);
            return;
        }
        if (size == SIZE_B) {
            if (op_num == 1) {
                FUNC4(current_entry);
            } else {
                FUNC9(current_entry);
            }
        } else if (size == SIZE_W) {
#ifndef Q68_DISABLE_ADDRESS_ERROR
            FUNC3(
                current_entry, opcode,
                FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_READ
            );
#endif
            if (op_num == 1) {
                FUNC6(current_entry);
            } else {
                FUNC11(current_entry);
            }
        } else {  // size == SIZE_L
#ifndef Q68_DISABLE_ADDRESS_ERROR
            FUNC3(
                current_entry, opcode,
                FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_READ
            );
#endif
            if (op_num == 1) {
                FUNC5(current_entry);
            } else {
                FUNC10(current_entry);
            }
        }
        break;

    }  // switch (EA_MODE(opcode))
}