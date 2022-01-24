#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_12__ {int cycles; scalar_t__ pc; scalar_t__ ptr; } ;
typedef  TYPE_1__ sh2rec_block_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R15 ; 
 int /*<<< orphan*/  R2 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC10(uint16_t inst, sh2rec_block_t *b) {
    int disp = FUNC0(inst);
    int32_t val;
    int32_t val2 = b->pc + 4;

    if(disp & 0x00000800) {
        disp |= 0xFFFFF000;
    }

    val = b->pc + 4 + (disp << 1);

    if(((uint32_t)b->ptr) & 0x03) {
        FUNC4(b, 2, R2);        /* R2 <- sh2[PC] + 4 + disp */
        FUNC4(b, 2, R0);        /* R0 <- sh2[PC] + 4 */
        FUNC3(b, 5);              /* Branch around the constant */
        FUNC5(b, R2, R15);      /* Push the next PC (delay slot) */
        FUNC1(b, 0);               /* Padding since we need it */
    }
    else {
        FUNC4(b, 1, R2);        /* R2 <- sh2[PC] + 4 + disp */
        FUNC4(b, 2, R0);        /* R0 <- sh2[PC] + 4 */
        FUNC3(b, 4);              /* Branch around the constant */
        FUNC5(b, R2, R15);      /* Push the next PC (delay slot) */
    }

    FUNC2(b, (uint32_t)val);       /* The next PC */
    FUNC2(b, (uint32_t)val2);      /* The value for PR */
    FUNC7(b, 21);              /* sh2[PR] <- R0 */

    /* Deal with the delay slot */
    b->pc += 2;
    FUNC9(b, 1);

    FUNC8(b);                     /* Return to sender! */
    FUNC6(b, R15, R0);          /* Pop the next PC (delay slot) */

    b->cycles += 2;                 /* 2 Cycles */
}