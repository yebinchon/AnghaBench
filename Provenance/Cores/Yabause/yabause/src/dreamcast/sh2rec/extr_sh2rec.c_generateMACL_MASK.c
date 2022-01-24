#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_17__ {int cycles; int pc; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_AND ; 
 int /*<<< orphan*/  OP_OR ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R10 ; 
 int /*<<< orphan*/  R15 ; 
 int /*<<< orphan*/  R2 ; 
 int /*<<< orphan*/  R3 ; 
 int /*<<< orphan*/  R4 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  R9 ; 
 int /*<<< orphan*/  R_PR ; 
 int /*<<< orphan*/  R_SR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(uint16_t inst, sh2rec_block_t *b) {
    int regn = FUNC0(inst);
    int regm = FUNC1(inst);

    FUNC15(b, R_PR, R10);          /* R10 <- PR */
    FUNC10(b, R8, regm, R4);    /* R4 <- sh2[Rm] */
    FUNC10(b, R9, 2, R0);       /* R0 <- MappedMemoryReadLong */
    FUNC2(b, 4, R4);             /* R4 <- R4 + 4 */
    FUNC13(b, R4, regm, R8);    /* sh2[Rm] <- R4 */
    FUNC5(b, R0);                 /* Call MappedMemoryReadLong */
    FUNC2(b, -4, R4);            /* R4 <- R4 - 4 (delay slot) */
    FUNC12(b, R0, R15);          /* Push R0 onto the stack */
    FUNC10(b, R8, regn, R4);    /* R4 <- sh2[Rn] */
    FUNC10(b, R9, 2, R0);       /* R0 <- MappedMemoryReadLong */
    FUNC2(b, 4, R4);             /* R4 <- R4 + 4 */
    FUNC13(b, R4, regn, R8);    /* sh2[Rn] <- R4 */
    FUNC5(b, R0);                 /* Call MappedMemoryReadLong */
    FUNC2(b, -4, R4);            /* R4 <- R4 - 4 (delay slot) */
    FUNC14(b, R_SR, R2);           /* R2 <- SR */
    FUNC9(b, 0xFD, R3);          /* R3 <- 0xFFFFFFFD */
    FUNC12(b, R0, R15);          /* Push R0 onto the stack */
    FUNC11(b, 16);              /* R0 <- sh2[SR] */
    FUNC3(b, R2, R3, OP_AND);     /* R3 <- R2 & R3 (Mask out S Bit) */
    FUNC4(b, 0x02);              /* R0 <- R0 & 0x02 (S Bit) */
    FUNC3(b, R0, R3, OP_OR);      /* R3 <- R0 | R3 (Put SH2 S Bit in) */
    FUNC6(b, R3, R_SR);           /* SR <- R3 */
    FUNC8(b, R15, R15);          /* Perform the MAC.L */
    FUNC6(b, R2, R_SR);           /* SR <- R2 */
    FUNC7(b, R10, R_PR);          /* PR <- R10 */

    b->cycles += 3;                 /* 3 Cycles */
    b->pc += 2;
}