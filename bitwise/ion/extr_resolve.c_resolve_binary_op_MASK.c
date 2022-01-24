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
typedef  int /*<<< orphan*/  TokenKind ;
struct TYPE_7__ {int /*<<< orphan*/  type; int /*<<< orphan*/  val; scalar_t__ is_const; } ;
typedef  TYPE_1__ Operand ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ) ; 

Operand FUNC3(TokenKind op, Operand left, Operand right) {
    if (left.is_const && right.is_const) {
        return FUNC1(left.type, FUNC0(op, left.type, left.val, right.val));
    } else {
        return FUNC2(left.type);
    }
}