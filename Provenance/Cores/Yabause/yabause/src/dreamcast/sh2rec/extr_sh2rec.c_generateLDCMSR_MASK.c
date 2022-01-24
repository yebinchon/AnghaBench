#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_14__ {int cycles; int pc; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_ADD ; 
 int /*<<< orphan*/  OP_AND ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R1 ; 
 int /*<<< orphan*/  R10 ; 
 int /*<<< orphan*/  R2 ; 
 int /*<<< orphan*/  R4 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  R9 ; 
 int /*<<< orphan*/  R_PR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(uint16_t inst, sh2rec_block_t *b) {
    int regm = FUNC0(inst);

    FUNC7(b, R9, 2, R0);       /* R0 <- MappedMemoryReadLong */
    FUNC11(b, R_PR, R10);          /* R10 <- PR */
    FUNC7(b, R8, regm, R4);    /* R4 <- sh2[Rm] */
    FUNC6(b, 4, R1);             /* R1 <- 4 */
    FUNC2(b, R4, R1, OP_ADD);     /* R1 <- R4 + R1 */
    FUNC4(b, R0);                 /* Call MappedMemoryReadLong */
    FUNC8(b, R1, regm, R8);    /* sh2[Rm] <- R1 */
    FUNC5(b, R10, R_PR);          /* PR <- R10 */
    FUNC10(b, 2, R2);            /* R2 <- 0x03F3 */
    FUNC3(b, 1);                  /* Jump beyond the constant */
    FUNC2(b, R2, R0, OP_AND);     /* R0 <- R0 & R2 (delay slot) */
    FUNC1(b, 0x03F3);              /* 0x03F3, grabbed by the emitMOVWI */
    FUNC9(b, 16);              /* sh2[SR] <- R0 */

    b->cycles += 3;                 /* 3 Cycles */
    b->pc += 2;
}