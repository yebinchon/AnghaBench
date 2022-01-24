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
typedef  int /*<<< orphan*/  Type ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef  TYPE_1__ Operand ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ type_double ; 
 scalar_t__ type_float ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 

void FUNC8(Operand *left, Operand *right) {
    if (left->type == type_double) {
        FUNC1(right, type_double);
    } else if (right->type == type_double) {
        FUNC1(left, type_double);
    } else if (left->type == type_float) {
        FUNC1(right, type_float);
    } else if (right->type == type_float) {
        FUNC1(left, type_float);
    } else {
        FUNC0(FUNC2(left->type));
        FUNC0(FUNC2(right->type));
        FUNC4(left);
        FUNC4(right);
        if (left->type != right->type) {
            if (FUNC3(left->type) == FUNC3(right->type)) {
                if (FUNC5(left->type) <= FUNC5(right->type)) {
                    FUNC1(left, right->type);
                } else {
                    FUNC1(right, left->type);
                }
            } else if (FUNC3(left->type) && FUNC5(right->type) >= FUNC5(left->type)) {
                FUNC1(left, right->type);
            } else if (FUNC3(right->type) && FUNC5(left->type) >= FUNC5(right->type)) {
                FUNC1(right, left->type);
            } else if (FUNC3(left->type) && FUNC6(left->type) > FUNC6(right->type)) {
                FUNC1(right, left->type);            
            } else if (FUNC3(right->type) && FUNC6(right->type) > FUNC6(left->type)) {
                FUNC1(left, right->type);
            } else { 
                Type *type = FUNC7(FUNC3(left->type) ? left->type : right->type);
                FUNC1(left, type);
                FUNC1(right, type);
            }
        }
    }
    FUNC0(left->type == right->type);
}