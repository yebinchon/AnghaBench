#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_19__ {int pc; int cycles; scalar_t__ ptr; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_ADD ; 
 int /*<<< orphan*/  OP_EXTUB ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R1 ; 
 int /*<<< orphan*/  R10 ; 
 int /*<<< orphan*/  R4 ; 
 int /*<<< orphan*/  R5 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  R9 ; 
 int /*<<< orphan*/  R_PR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(uint16_t inst, sh2rec_block_t *b) {
    int imm = FUNC0(inst);
    int disp = (((uint32_t)(b->ptr)) & 0x03) ? 5 : 6;
    uint32_t val = b->pc + 2;

    FUNC16(b, R_PR, R10);          /* R10 <- PR */
    FUNC10(b, R8, 15, R4);      /* R4 <- sh2[R15] */
    FUNC10(b, R9, 5, R1);       /* R1 <- MemoryMappedWriteLong */
    FUNC11(b, 16);              /* R0 <- sh2[SR] */
    FUNC3(b, -4, R4);            /* R4 <- R4 - 4 */
    FUNC5(b, R1);                 /* Call MemoryMappedWriteLong */
    FUNC7(b, R0, R5);             /* R5 <- R0 (delay slot) */
    FUNC10(b, R8, 15, R4);      /* R4 <- sh2[R15] */
    FUNC10(b, R9, 5, R1);       /* R1 <- MemoryMappedWriteLong */
    FUNC3(b, -8, R4);            /* R4 <- R4 - 8 */
    FUNC9(b, disp, R5);         /* R5 <- Updated PC value (to be stacked) */
    FUNC5(b, R1);                 /* Call MemoryMappedWriteLong */
    FUNC12(b, R4, 15, R8);      /* sh2[R15] <- R4 (delay slot) */
    FUNC8(b, imm, R4);           /* R4 <- immediate data */
    FUNC4(b, R4, R4, OP_EXTUB);   /* Zero-extend R4 */
    FUNC10(b, R9, 2, R1);       /* R1 <- MemoryMappedReadLong */
    FUNC11(b, 18);              /* R0 <- sh2[VBR] */
    FUNC15(b, R4);               /* R4 <- R4 << 2 */
    FUNC5(b, R1);                 /* Call MemoryMappedReadLong */
    FUNC4(b, R0, R4, OP_ADD);     /* R4 <- R4 + R0 (delay slot) */
    FUNC6(b, R10, R_PR);          /* PR <- R10 */
    FUNC14(b);                     /* Return to sender! */
    FUNC13(b);                     /* XXXX: Nothing here */
    if(((uint32_t)b->ptr) & 0x03)
        FUNC1(b, 0);               /* Padding for the alignment */
    FUNC2(b, val);                 /* The PC value to be loaded by the MOVLI */
    
    b->cycles += 8;                 /* 8 Cycles */
}