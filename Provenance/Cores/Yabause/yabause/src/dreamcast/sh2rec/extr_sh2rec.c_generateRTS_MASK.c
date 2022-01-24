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
struct TYPE_8__ {int pc; int cycles; } ;
typedef  TYPE_1__ sh2rec_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R15 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC5(uint16_t inst, sh2rec_block_t *b) {
    FUNC0(b, 21);              /* R0 <- sh2[PR] */
    FUNC1(b, R0, R15);          /* Push the PR on the stack */

    /* Deal with the delay slot */
    b->pc += 2;
    FUNC4(b, 1);

    FUNC3(b);                     /* Return to sender! */
    FUNC2(b, R15, R0);          /* Pop the next PC (delay slot) */

    b->cycles += 2;                 /* 2 Cycles */
}