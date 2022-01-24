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
 int /*<<< orphan*/  INSN_GET_REG0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  current_entry ; 
 int reg0 ; 

__attribute__((used)) static int FUNC4(Q68State *state, uint32_t opcode)
{
    FUNC1(current_entry);
    INSN_GET_REG0;
    if (opcode & 0x0008) {
        FUNC3(current_entry, reg0*4);
    } else {
        FUNC2(current_entry, reg0*4);
    }
    FUNC0(current_entry, 4);
    return 0;
}