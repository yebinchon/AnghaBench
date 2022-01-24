#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_7__ {int pc; int /*<<< orphan*/  cycles; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  OP_AND ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R1 ; 
 int /*<<< orphan*/  R3 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC4(uint16_t inst, sh2rec_block_t *b) {
    FUNC2(b, 16);              /* R0 <- sh2[SR] */
    FUNC1(b, 0xFE, R1);          /* R1 <- 0xFFFFFFFE */
    FUNC0(b, R3, R0, OP_AND);     /* Clear T bit */
    FUNC3(b, 16);              /* sh2[SR] <- R0 */

    ++b->cycles;                    /* 1 Cycle */
    b->pc += 2;
}