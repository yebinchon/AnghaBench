#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_8__ {int pc; int /*<<< orphan*/  cycles; scalar_t__ ptr; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R2 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(uint16_t inst, sh2rec_block_t *b) {
    int imm = FUNC0(inst);
    uint32_t addr = ((b->pc + 4) & 0xFFFFFFFC) + (imm << 2);

    if(((uint32_t)b->ptr) & 0x03) {
        FUNC4(b, 1, R2);        /* R2 <- calculated effective addr */
        FUNC3(b, 2);              /* Jump beyond the constant */
        FUNC5(b, R2, 0, R8);   /* sh2[R0] <- R2 */
        FUNC2(b, addr);            /* MOVA effective address */
    }
    else {
        FUNC4(b, 1, R2);        /* R2 <- calculated effective addr */
        FUNC3(b, 3);              /* Jump beyond the constant */
        FUNC5(b, R2, 0, R8);   /* sh2[R0] <- R2 */
        FUNC1(b, 0);               /* Padding, for alignment issues */
        FUNC2(b, addr);            /* MOVA effective address */
    }

    ++b->cycles;                    /* 1 Cycle */
    b->pc += 2;
}