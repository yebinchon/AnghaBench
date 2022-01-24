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
struct TYPE_8__ {int pc; int /*<<< orphan*/  cycles; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R1 ; 
 int /*<<< orphan*/  R10 ; 
 int /*<<< orphan*/  R4 ; 
 int /*<<< orphan*/  R5 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  R9 ; 
 int /*<<< orphan*/  R_PR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(uint16_t inst, sh2rec_block_t *b) {
    int regn = FUNC0(inst);
    int regm = FUNC1(inst);
    int imm = FUNC2(inst) << 2;

    FUNC6(b, R8, regm, R5);    /* R5 <- sh2[Rm] */
    FUNC6(b, R9, 5, R1);       /* R1 <- MappedMemoryWriteLong */
    FUNC6(b, R8, regn, R4);    /* R4 <- sh2[Rn] */
    FUNC7(b, R_PR, R10);          /* R10 <- PR */
    FUNC4(b, R1);                 /* Call MappedMemoryWriteLong */
    FUNC3(b, imm, R4);           /* R4 <- R4 + displacement */
    FUNC5(b, R10, R_PR);          /* PR <- R10 */

    ++b->cycles;                    /* 1 Cycle */
    b->pc += 2;
}