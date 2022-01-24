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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_13__ {int cycles; int pc; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_OR ; 
 int /*<<< orphan*/  OP_ROTCL ; 
 int /*<<< orphan*/  OP_ROTCR ; 
 int /*<<< orphan*/  OP_TST ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R1 ; 
 int /*<<< orphan*/  R10 ; 
 int /*<<< orphan*/  R2 ; 
 int /*<<< orphan*/  R4 ; 
 int /*<<< orphan*/  R5 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  R9 ; 
 int /*<<< orphan*/  R_PR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(uint16_t inst, sh2rec_block_t *b) {
    int regn = FUNC0(inst);

    FUNC6(b, R9, 0, R0);       /* R0 <- MappedMemoryReadByte */
    FUNC10(b, R_PR, R10);          /* R10 <- PR */
    FUNC2(b, R0);                 /* Call MappedMemoryReadByte */
    FUNC6(b, R8, regn, R4);    /* R4 <- sh2[Rn] (delay slot) */
    FUNC4(b, R0, R5);             /* R5 <- R0 (byte read) */
    FUNC7(b, 16);              /* R0 <- sh2[SR] */
    FUNC5(b, 0x80, R2);          /* R2 <- 0x80 */
    FUNC6(b, R8, regn, R4);    /* R4 <- sh2[Rn] */
    FUNC9(b, R0, OP_ROTCR);     /* Rotate SH2's T Bit in place */
    FUNC1(b, R5, R5, OP_TST);     /* T <- 1 if byte == 0, 0 otherwise */
    FUNC9(b, R0, OP_ROTCL);     /* Rotate T back to SH2 reg */
    FUNC6(b, R9, 3, R1);       /* R1 <- MappedMemoryWriteByte */
    FUNC8(b, 16);              /* sh2[SR] <- R0 */
    FUNC2(b, R1);                 /* Call MappedMemoryWriteByte */
    FUNC1(b, R2, R5, OP_OR);      /* R5 <- R5 | 0x80 (delay slot) */
    FUNC3(b, R10, R_PR);          /* PR <- R10 */

    b->cycles += 4;                 /* 4 Cycles */
    b->pc += 2;
}