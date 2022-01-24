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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_16__ {int pc; int /*<<< orphan*/  cycles; scalar_t__ ptr; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_ADD ; 
 int /*<<< orphan*/  OP_ROTCR ; 
 int /*<<< orphan*/  OP_SHLL ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R15 ; 
 int /*<<< orphan*/  R2 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC14(uint16_t inst, sh2rec_block_t *b) {
    int disp = FUNC0(inst);
    uint32_t val = b->pc + 4;
    int n = (((uint32_t)b->ptr) & 0x03) ? 3 : 4;
    
    FUNC8(b, 16);              /* R0 <- sh2[SR] */
    FUNC7(b, n, R2);            /* R2 <- sh2[PC] + 4 */
    FUNC12(b, R0, OP_ROTCR);     /* Rotate SH2's T Bit in place */
    FUNC6(b, 0, R0);             /* R0 <- 0 */
    FUNC5(b, 1);                   /* Branch around the addition if needed */
    FUNC6(b, disp, R0);          /* R0 <- displacement */
    FUNC12(b, R0, OP_SHLL);      /* R0 <- R0 << 1 */

    if(((uint32_t)b->ptr) & 0x03) {
        FUNC4(b, 3);              /* Branch around the constant */
        FUNC3(b, R2, R0, OP_ADD); /* R0 <- R0 + R2 (delay slot) */
        FUNC1(b, 0);               /* Padding since we need it */
    }
    else {
        FUNC4(b, 2);              /* Branch around the constant */
        FUNC3(b, R2, R0, OP_ADD); /* R0 <- R0 + R2 (delay slot) */
    }

    FUNC2(b, val);                 /* The next PC value (if not taken) */
    FUNC9(b, R0, R15);          /* Push the next PC on the stack */

    /* Deal with the delay slot here */
    b->pc += 2;
    FUNC13(b, 1);

    FUNC11(b);                     /* Return to sender! */
    FUNC10(b, R15, R0);          /* Pop the next PC (delay slot) */

    ++b->cycles;                    /* 1 Cycle (if not taken) */
    /* XXXX: Handle taken case cycle difference */
}