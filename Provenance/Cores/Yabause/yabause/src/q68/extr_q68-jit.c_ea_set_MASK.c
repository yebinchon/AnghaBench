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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  Q68State ;

/* Variables and functions */
#define  EA_ADDRESS_REG 129 
#define  EA_DATA_REG 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FAULT_STATUS_IN_DATA ; 
 int FAULT_STATUS_RW_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int SIZE_B ; 
 int SIZE_W ; 
 int /*<<< orphan*/  current_entry ; 

__attribute__((used)) static void FUNC10(Q68State *state, uint32_t opcode, int size)
{
    switch (FUNC0(opcode)) {
      case EA_DATA_REG:
        if (size == SIZE_B) {
            FUNC7(current_entry, FUNC1(opcode) * 4);
        } else if (size == SIZE_W) {
            FUNC9(current_entry, FUNC1(opcode) * 4);
        } else {  // size == SIZE_L
            FUNC8(current_entry, FUNC1(opcode) * 4);
        }
        return;
      case EA_ADDRESS_REG:
        if (size == SIZE_W) {
            FUNC3(current_entry, (8 + FUNC1(opcode)) * 4);
        } else {  // size == SIZE_L
            FUNC8(current_entry, (8 + FUNC1(opcode)) * 4);
        }
        return;
      default: {
        if (size == SIZE_B) {
            FUNC4(current_entry);
        } else if (size == SIZE_W) {
#ifndef Q68_DISABLE_ADDRESS_ERROR
            FUNC2(
                current_entry, opcode,
                FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_WRITE
            );
#endif
            FUNC6(current_entry);
        } else {  // size == SIZE_L
#ifndef Q68_DISABLE_ADDRESS_ERROR
            FUNC2(
                current_entry, opcode,
                FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_WRITE
            );
#endif
            FUNC5(current_entry);
        }
        return;
      }
    }
}