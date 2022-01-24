#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
struct TYPE_9__ {scalar_t__ kind; int /*<<< orphan*/  init; int /*<<< orphan*/  index; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {size_t num_fields; TYPE_3__* fields; scalar_t__ type; } ;
struct TYPE_8__ {TYPE_1__ compound; } ;
typedef  TYPE_2__ Expr ;
typedef  TYPE_3__ CompoundField ;

/* Variables and functions */
 scalar_t__ FIELD_INDEX ; 
 scalar_t__ FIELD_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*) ; 

void FUNC7(Expr *expr) {
    Type *expected_type = FUNC2(expr);
    if (expected_type && !FUNC4(expected_type)) {
        FUNC1("{");
    } else if (expr->compound.type) {
        FUNC1("(%s){", FUNC6(expr->compound.type, ""));
    } else {
        FUNC1("(%s){", FUNC5(FUNC3(expr), ""));
    }
    for (size_t i = 0; i < expr->compound.num_fields; i++) {
        if (i != 0) {
            FUNC1(", ");
        }
        CompoundField field = expr->compound.fields[i];
        if (field.kind == FIELD_NAME) {
            FUNC1(".%s = ", field.name);
        } else if (field.kind == FIELD_INDEX) {
            FUNC1("[");
            FUNC0(field.index);
            FUNC1("] = ");
        }
        FUNC0(field.init);
    }
    if (expr->compound.num_fields == 0) {
        FUNC1("0");
    }
    FUNC1("}");
}