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
struct TYPE_13__ {int pc; int cycles; scalar_t__ ptr; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_ADD ; 
 int /*<<< orphan*/  OP_ROTCR ; 
 int /*<<< orphan*/  OP_SHLL ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R2 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(uint16_t inst, sh2rec_block_t *b) {
    int disp = FUNC0(inst);
    uint32_t val = b->pc + 2;

    FUNC8(b, 16);              /* R0 <- sh2[SR] */
    FUNC7(b, 4, R2);            /* R2 <- sh2[PC] + 2 */
    FUNC10(b, R0, OP_ROTCR);     /* Rotate SH2's T Bit in place */
    FUNC6(b, 0, R0);             /* R0 <- 0 */
    FUNC5(b, 2);                   /* Branch around the addition if needed */
    FUNC6(b, disp, R0);          /* R0 <- displacement */
    FUNC10(b, R0, OP_SHLL);      /* R0 <- R0 << 1 */
    FUNC3(b, 2, R0);             /* R0 <- R0 + 2 */
    FUNC9(b);                     /* Return to sender! */
    FUNC4(b, R2, R0, OP_ADD);     /* R0 <- R0 + R2 (delay slot) */
    if(((uint32_t)b->ptr) & 0x03)
        FUNC1(b, 0);               /* Padding if we need it */
    FUNC2(b, val);                 /* The next PC value (if not taken) */

    b->cycles += 2;                 /* 2 Cycles (if not taken) */
    /* XXXX: Handle taken case cycle difference */
}