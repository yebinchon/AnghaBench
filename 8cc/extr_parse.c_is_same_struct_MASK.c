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
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_5__ {int kind; int /*<<< orphan*/  fields; int /*<<< orphan*/  is_struct; struct TYPE_5__* ptr; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ Type ;

/* Variables and functions */
#define  KIND_ARRAY 130 
#define  KIND_PTR 129 
#define  KIND_STRUCT 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(Type *a, Type *b) {
    if (a->kind != b->kind)
        return false;
    switch (a->kind) {
    case KIND_ARRAY:
        return a->len == b->len &&
            FUNC3(a->ptr, b->ptr);
    case KIND_PTR:
        return FUNC3(a->ptr, b->ptr);
    case KIND_STRUCT: {
        if (a->is_struct != b->is_struct)
            return false;
        Vector *ka = FUNC0(a->fields);
        Vector *kb = FUNC0(b->fields);
        if (FUNC2(ka) != FUNC2(kb))
            return false;
        for (int i = 0; i < FUNC2(ka); i++)
            if (!FUNC3(FUNC1(ka, i), FUNC1(kb, i)))
                return false;
        return true;
    }
    default:
        return true;
    }
}