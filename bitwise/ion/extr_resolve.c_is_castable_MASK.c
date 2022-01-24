#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
struct TYPE_4__ {int /*<<< orphan*/ * type; } ;
typedef  TYPE_1__ Operand ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(Operand *operand, Type *dest) {
    Type *src = operand->type;
    if (FUNC0(operand, dest)) {
        return true;
    } else if (FUNC1(dest)) {
        return FUNC2(src);
    } else if (FUNC1(src)) {
        return FUNC2(dest);
    } else if (FUNC2(dest) && FUNC2(src)) {
        return true;
    } else {
        return false;
    }
}