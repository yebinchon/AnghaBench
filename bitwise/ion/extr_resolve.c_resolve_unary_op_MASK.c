#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TokenKind ;
struct TYPE_6__ {int /*<<< orphan*/  val; int /*<<< orphan*/  type; scalar_t__ is_const; } ;
typedef  TYPE_1__ Operand ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

Operand FUNC3(TokenKind op, Operand operand) {
    FUNC2(&operand);
    if (operand.is_const) {
        return FUNC1(operand.type, FUNC0(op, operand.type, operand.val));
    } else {
        return operand;
    }
}