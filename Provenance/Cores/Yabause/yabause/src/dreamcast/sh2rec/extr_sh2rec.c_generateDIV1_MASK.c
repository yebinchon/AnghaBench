#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_16__ {int pc; int /*<<< orphan*/  cycles; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_AND ; 
 int /*<<< orphan*/  OP_NOT ; 
 int /*<<< orphan*/  OP_OR ; 
 int /*<<< orphan*/  OP_ROTCL ; 
 int /*<<< orphan*/  OP_ROTCR ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R2 ; 
 int /*<<< orphan*/  R3 ; 
 int /*<<< orphan*/  R4 ; 
 int /*<<< orphan*/  R5 ; 
 int /*<<< orphan*/  R6 ; 
 int /*<<< orphan*/  R7 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  R_SR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(uint16_t inst, sh2rec_block_t *b) {
    int regn = FUNC0(inst);
    int regm = FUNC1(inst);

    FUNC9(b, 16);              /* R0 <- sh2[SR] */
    FUNC8(b, R8, regn, R2);    /* R2 <- sh2[Rn] */
    FUNC7(b, 0x03, R4);          /* R4 <- 0x03 */
    FUNC13(b, R4);               /* R4 <<= 8 */
    FUNC8(b, R8, regm, R3);    /* R3 <- sh2[Rm] */
    FUNC6(b, R4, R6);             /* R6 <- R4 */
    FUNC2(b, R0, R6, OP_AND);     /* Grab SH2 M and Q bits */
    FUNC12(b, R0, OP_ROTCR);     /* Rotate SH2's T in place */
    FUNC14(b, R_SR, R5);           /* Save SR to R5 */
    FUNC2(b, R4, R7, OP_NOT);     /* Set up the mask to clear M and Q */
    FUNC2(b, R7, R5, OP_AND);     /* Clear M, Q */
    FUNC2(b, R6, R5, OP_OR);      /* Put SH2's M and Q in place */
    FUNC5(b, R5, R_SR);           /* Put the modified SR in place */
    FUNC4(b, R3, R2);            /* Do the division! */
    FUNC14(b, R_SR, R5);           /* Save updated SR to R5 */
    FUNC2(b, R4, R5, OP_AND);     /* Grab M and Q from the SR */
    FUNC12(b, R0, OP_ROTCL);     /* Rotate T back to SH2 reg */
    FUNC10(b, R2, regn, R8);    /* sh2[Rn] <- R2 */
    FUNC3(b, 0xF3);              /* Clear M and Q from the SH2 reg */
    FUNC2(b, R5, R0, OP_OR);      /* Save M and Q into the SH2 reg */
    FUNC11(b, 16);              /* sh2[SR] <- R0 */

    ++b->cycles;                    /* 1 Cycle */
    b->pc += 2;
}