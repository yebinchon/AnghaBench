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
struct TYPE_5__ {int pc; int /*<<< orphan*/  cycles; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(uint16_t inst, sh2rec_block_t *b) {
    int regn = FUNC0(inst);

    FUNC1(b, 18);              /* R0 <- sh2[VBR] */
    FUNC2(b, R0, regn, R8);    /* sh2[Rn] <- R0 */

    ++b->cycles;                    /* 1 Cycle */
    b->pc += 2;
}