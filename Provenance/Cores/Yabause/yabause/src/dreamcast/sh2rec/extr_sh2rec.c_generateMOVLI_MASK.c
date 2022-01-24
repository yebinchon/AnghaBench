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
struct TYPE_13__ {int pc; int /*<<< orphan*/  cycles; scalar_t__ ptr; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R10 ; 
 int /*<<< orphan*/  R4 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  R9 ; 
 int /*<<< orphan*/  R_PR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(uint16_t inst, sh2rec_block_t *b) {
    int regn = FUNC0(inst);
    int imm = FUNC1(inst);
    uint32_t addr = ((b->pc + 4) & 0xFFFFFFFC) + (imm << 2);

    if(((uint32_t)b->ptr) & 0x03) {
        FUNC7(b, 1, R4);        /* R4 <- calculated effective addr */
        FUNC4(b, 2);              /* Jump beyond the constant */
        FUNC8(b, R9, 2, R0);   /* R0 <- MappedMemoryReadLong */
        FUNC3(b, addr);            /* MOV.L effective address */
    }
    else {
        FUNC7(b, 1, R4);        /* R4 <- calculated effective addr */
        FUNC4(b, 3);              /* Jump beyond the constant */
        FUNC8(b, R9, 2, R0);   /* R0 <- MappedMemoryReadLong */
        FUNC2(b, 0);               /* Padding, for alignment issues */
        FUNC3(b, addr);            /* MOV.L effective address */
    }

    FUNC11(b, R_PR, R10);          /* R10 <- PR */
    FUNC5(b, R0);                 /* Call MappedMemoryReadLong */
    FUNC10(b);                     /* XXXX: Nothing to put here */
    FUNC6(b, R10, R_PR);          /* PR <- R10 */
    FUNC9(b, R0, regn, R8);    /* sh2[Rn] <- read long */

    ++b->cycles;                    /* 1 Cycle */
    b->pc += 2;
}