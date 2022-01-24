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
struct TYPE_13__ {int pc; int /*<<< orphan*/  cycles; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_AND ; 
 int /*<<< orphan*/  OP_OR ; 
 int /*<<< orphan*/  OP_ROTCL ; 
 int /*<<< orphan*/  OP_SHLR ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R2 ; 
 int /*<<< orphan*/  R3 ; 
 int /*<<< orphan*/  R4 ; 
 int /*<<< orphan*/  R5 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  R_SR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(uint16_t inst, sh2rec_block_t *b) {
    int regn = FUNC0(inst);
    int regm = FUNC1(inst);

    FUNC7(b, 16);              /* R0 <- sh2[SR] */
    FUNC6(b, R8, regn, R2);    /* R2 <- sh2[Rn] */
    FUNC5(b, 0x03, R4);          /* R4 <- 0x03 */
    FUNC3(b, 0xF2);              /* Clear M, Q, and T */
    FUNC6(b, R8, regm, R3);    /* R3 <- sh2[Rm] */
    FUNC10(b, R4);               /* R4 <<= 8 */
    FUNC9(b, R0, OP_SHLR);      /* Chop off the T from the SH2 reg */
    FUNC4(b, R3, R2);           /* div0s to grab the M, Q, T bits needed */
    FUNC11(b, R_SR, R5);           /* Save SR to R5 */
    FUNC2(b, R4, R5, OP_AND);     /* Grab M, Q from the SR */
    FUNC9(b, R0, OP_ROTCL);     /* Rotate T back to SH2 reg */
    FUNC2(b, R5, R0, OP_OR);      /* Save M, Q into the SH2 reg */
    FUNC8(b, 16);              /* sh2[SR] <- R0 */

    ++b->cycles;                    /* 1 Cycle */
    b->pc += 2;
}