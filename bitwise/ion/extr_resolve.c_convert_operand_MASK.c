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
typedef  int /*<<< orphan*/  Type ;
struct TYPE_5__ {int is_lvalue; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ Operand ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(Operand *operand, Type *type) {
    if (FUNC1(operand, type)) {
        FUNC0(operand, type);
        operand->type = FUNC2(operand->type);
        operand->is_lvalue = false;
        return true;
    }
    return false;
}