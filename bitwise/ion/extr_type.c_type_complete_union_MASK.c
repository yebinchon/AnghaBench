#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_4__* type; scalar_t__ offset; scalar_t__ name; } ;
typedef  TYPE_2__ TypeField ;
struct TYPE_13__ {int /*<<< orphan*/  num_fields; TYPE_2__* fields; } ;
struct TYPE_15__ {scalar_t__ kind; int nonmodifiable; TYPE_1__ aggregate; void* align; void* size; } ;
typedef  TYPE_3__ Type ;
struct TYPE_16__ {scalar_t__ kind; scalar_t__ nonmodifiable; } ;

/* Variables and functions */
 void* FUNC0 (void*,void*) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_COMPLETING ; 
 scalar_t__ TYPE_UNION ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

void FUNC8(Type *type, TypeField *fields, size_t num_fields) {
    FUNC3(type->kind == TYPE_COMPLETING);
    type->kind = TYPE_UNION;
    type->size = 0;
    type->align = 0;
    bool nonmodifiable = false;
    TypeField *new_fields = NULL;
    for (TypeField *it = fields; it != fields + num_fields; it++) {
        FUNC3(it->type->kind > TYPE_COMPLETING);
        if (it->name) {
            it->offset = 0;
            FUNC5(new_fields, *it);
        } else {
            FUNC2(&new_fields, it->type, 0);
        }
        type->size = FUNC1(type->size, FUNC7(it->type));
        type->align = FUNC1(type->align, FUNC6(it->type));
        nonmodifiable = it->type->nonmodifiable || nonmodifiable;
    }
    type->size = FUNC0(type->size, type->align);
    type->aggregate.fields = new_fields;
    type->aggregate.num_fields = FUNC4(new_fields);
    type->nonmodifiable = nonmodifiable;
}