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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_14__ {int pc; int /*<<< orphan*/  cycles; scalar_t__ ptr; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_EXTSW ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R10 ; 
 int /*<<< orphan*/  R4 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  R9 ; 
 int /*<<< orphan*/  R_PR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(uint16_t inst, sh2rec_block_t *b) {
    int regn = FUNC0(inst);
    int imm = FUNC1(inst);
    uint32_t addr = b->pc + 4 + (imm << 1);

    if(((uint32_t)b->ptr) & 0x03) {
        FUNC8(b, 1, R4);        /* R4 <- calculated effective addr */
        FUNC5(b, 2);              /* Jump beyond the constant */
        FUNC9(b, R9, 1, R0);   /* R0 <- MappedMemoryReadWord */
        FUNC3(b, addr);            /* MOV.W effective address */
    }
    else {
        FUNC8(b, 1, R4);        /* R4 <- calculated effective addr */
        FUNC5(b, 3);              /* Jump beyond the constant */
        FUNC9(b, R9, 1, R0);   /* R0 <- MappedMemoryReadWord */
        FUNC2(b, 0);               /* Padding, for alignment issues */
        FUNC3(b, addr);            /* MOV.W effective address */
    }

    FUNC12(b, R_PR, R10);          /* R10 <- PR */
    FUNC6(b, R0);                 /* Call MappedMemoryReadWord */
    FUNC11(b);                     /* XXXX: Nothing to put here */
    FUNC4(b, R0, R0, OP_EXTSW);   /* Sign extend read word */
    FUNC7(b, R10, R_PR);          /* PR <- R10 */
    FUNC10(b, R0, regn, R8);    /* sh2[Rn] <- read word */

    ++b->cycles;                    /* 1 Cycle */
    b->pc += 2;
}