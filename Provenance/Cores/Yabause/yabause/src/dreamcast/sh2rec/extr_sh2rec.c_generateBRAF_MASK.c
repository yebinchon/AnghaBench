#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_13__ {int pc; int cycles; scalar_t__ ptr; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_ADD ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R15 ; 
 int /*<<< orphan*/  R2 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC11(uint16_t inst, sh2rec_block_t *b) {
    int regm = FUNC0(inst);
    uint32_t val = b->pc + 4;

    if(((uint32_t)b->ptr) & 0x03) {
        FUNC5(b, 2, R0);        /* R0 <- sh2[PC] + 4 */
        FUNC6(b, R8, regm, R2);/* R2 <- sh2[Rm] */
        FUNC4(b, 3);              /* Branch around the constant */
        FUNC3(b, R0, R2, OP_ADD); /* R2 <- R0 + R2 (delay slot) */
        FUNC1(b, 0);               /* Padding since we need it */
    }
    else {
        FUNC5(b, 1, R0);        /* R0 <- sh2[PC] + 4 */
        FUNC6(b, R8, regm, R2);/* R2 <- sh2[Rm] */
        FUNC4(b, 2);              /* Branch around the constant */
        FUNC3(b, R0, R2, OP_ADD); /* R2 <- R0 + R2 (delay slot) */
    }

    FUNC2(b, val);                 /* The value to use as the base for PC */
    FUNC7(b, R2, R15);          /* Push the next PC */

    /* Deal with the delay slot */
    b->pc += 2;
    FUNC10(b, 1);

    FUNC9(b);                     /* Return to sender! */
    FUNC8(b, R15, R0);          /* Pop the next PC (delay slot) */

    b->cycles += 2;                 /* 2 Cycles */
}