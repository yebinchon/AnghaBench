#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_5__ {int cycles; int pc; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_DMULS ; 
 int /*<<< orphan*/  R2 ; 
 int /*<<< orphan*/  R3 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uint16_t inst, sh2rec_block_t *b) {
    int regn = FUNC0(inst);
    int regm = FUNC1(inst);

    FUNC3(b, R8, regn, R2);    /* R2 <- sh2[Rn] */
    FUNC3(b, R8, regm, R3);    /* R3 <- sh2[Rm] */
    FUNC2(b, R3, R2, OP_DMULS);   /* MACH/MACL <- (s32)R2 * (s32)R3 */

    b->cycles += 2;                 /* 2 Cycles */
    b->pc += 2;
}