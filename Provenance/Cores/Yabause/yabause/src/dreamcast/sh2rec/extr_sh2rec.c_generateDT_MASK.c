#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_9__ {int pc; int /*<<< orphan*/  cycles; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_ROTCL ; 
 int /*<<< orphan*/  OP_ROTCR ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R2 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(uint16_t inst, sh2rec_block_t *b) {
    int regn = FUNC0(inst);

    FUNC3(b, 16);              /* R0 <- sh2[SR] */
    FUNC2(b, R8, regn, R2);    /* R2 <- sh2[Rn] */
    FUNC6(b, R0, OP_ROTCR);     /* Rotate SH2's T Bit in place */
    FUNC1(b, R2);                  /* R2 = R2 - 1 (T Bit = non-zero) */
    FUNC6(b, R0, OP_ROTCL);     /* Rotate T back to SH2 reg */
    FUNC4(b, R2, regn, R8);    /* sh2[Rn] <- R2 */
    FUNC5(b, 16);              /* sh2[SR] <- R0 */

    ++b->cycles;                    /* 1 Cycle */
    b->pc += 2;
}