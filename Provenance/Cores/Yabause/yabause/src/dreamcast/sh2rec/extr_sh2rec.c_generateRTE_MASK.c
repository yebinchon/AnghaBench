#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_18__ {int pc; int cycles; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  OP_ADD ; 
 int /*<<< orphan*/  OP_AND ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R1 ; 
 int /*<<< orphan*/  R10 ; 
 int /*<<< orphan*/  R15 ; 
 int /*<<< orphan*/  R2 ; 
 int /*<<< orphan*/  R4 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  R9 ; 
 int /*<<< orphan*/  R_PR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC15(uint16_t inst, sh2rec_block_t *b) {
    FUNC6(b, R9, 2, R0);       /* R0 <- MappedMemoryReadLong */
    FUNC13(b, R_PR, R10);          /* R10 <- PR */
    FUNC3(b, R0);                 /* Call MappedMemoryReadLong */
    FUNC6(b, R8, 15, R4);      /* R4 <- sh2[R15] (delay slot) */
    FUNC6(b, R9, 2, R1);       /* R1 <- MappedMemoryReadLong */
    FUNC6(b, R8, 15, R4);      /* R4 <- sh2[R15] */
    FUNC5(b, 4, R2);             /* R2 <- 4 */
    FUNC1(b, R2, R4, OP_ADD);     /* R4 <- R4 + R2 */
    FUNC7(b, R0, R15);          /* Push the next PC */
    FUNC1(b, R4, R2, OP_ADD);     /* R2 <- R4 + R2 */
    FUNC3(b, R1);                 /* Call MappedMemoryReadLong */
    FUNC9(b, R2, 15, R8);      /* sh2[R15] <- R2 (delay slot) */
    FUNC11(b, 1, R1);            /* R1 <- 0x000003F3 */
    FUNC2(b, 1);                  /* Branch around the constant */
    FUNC1(b, R1, R0, OP_AND);     /* R0 <- R0 & R1 */
    FUNC0(b, 0x03F3);              /* Mask for SR register */
    FUNC4(b, R10, R_PR);          /* PR <- R10 */
    FUNC10(b, 16);              /* sh2[SR] <- R0 */

    /* Deal with the delay slot */
    b->pc += 2;
    FUNC14(b, 1);

    FUNC12(b);                     /* Return to sender! */
    FUNC8(b, R15, R0);          /* Pop the next PC (delay slot) */

    b->cycles += 4;                 /* 4 Cycles */
}