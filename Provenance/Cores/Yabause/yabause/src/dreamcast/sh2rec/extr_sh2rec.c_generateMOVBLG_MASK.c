#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_11__ {int pc; int /*<<< orphan*/  cycles; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_ADD ; 
 int /*<<< orphan*/  OP_EXTSB ; 
 int /*<<< orphan*/  OP_EXTUB ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R1 ; 
 int /*<<< orphan*/  R10 ; 
 int /*<<< orphan*/  R4 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  R9 ; 
 int /*<<< orphan*/  R_PR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(uint16_t inst, sh2rec_block_t *b) {
    int imm = FUNC0(inst);

    FUNC8(b, R_PR, R10);          /* R10 <- PR */
    FUNC5(b, R9, 0, R1);       /* R1 <- MappedMemoryReadByte */
    FUNC4(b, imm, R4);           /* R4 <- Displacement */
    FUNC6(b, 17);              /* R0 <- sh2[GBR] */
    FUNC1(b, R4, R4, OP_EXTUB);   /* Zero extend displacement */
    FUNC2(b, R1);                 /* Call MappedMemoryReadByte */
    FUNC1(b, R0, R4, OP_ADD);     /* R4 <- R4 + R0 */
    FUNC1(b, R0, R0, OP_EXTSB);   /* Sign extend read byte */
    FUNC3(b, R10, R_PR);          /* PR <- R10 */
    FUNC7(b, R0, 0, R8);       /* sh2[R0] <- read byte */

    ++b->cycles;                    /* 1 Cycle */
    b->pc += 2;
}