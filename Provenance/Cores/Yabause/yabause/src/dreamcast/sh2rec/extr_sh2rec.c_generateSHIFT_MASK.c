#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_8__ {int /*<<< orphan*/  cycles; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int OP_ROTCL ; 
 int OP_ROTCR ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R2 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC6(uint16_t inst, sh2rec_block_t *b, int op) {
    int regn = FUNC0(inst);

    FUNC2(b, 16);              /* R0 <- sh2[SR] */
    FUNC1(b, R8, regn, R2);    /* R2 <- sh2[Rn] */
    FUNC5(b, R0, OP_ROTCR);     /* Rotate SH2's T Bit in place */
    FUNC5(b, R2, op);           /* R2 <- R2 op */
    FUNC5(b, R0, OP_ROTCL);     /* Rotate T back to SH2 reg */
    FUNC3(b, R2, regn, R8);    /* sh2[Rn] <- R2 */
    FUNC4(b, 16);              /* sh2[SR] <- R0 */

    ++b->cycles;                    /* 1 Cycle */
}