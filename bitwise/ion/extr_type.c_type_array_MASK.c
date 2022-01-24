#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_13__ {size_t num_elems; size_t size; int incomplete_elems; struct TYPE_13__* base; int /*<<< orphan*/  align; int /*<<< orphan*/  nonmodifiable; } ;
typedef  TYPE_1__ Type ;
struct TYPE_14__ {struct TYPE_14__* next; TYPE_1__* type; } ;
typedef  TYPE_2__ CachedArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_ARRAY ; 
 int /*<<< orphan*/  cached_array_types ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (TYPE_1__*) ; 
 TYPE_2__* FUNC9 (int) ; 

Type *FUNC10(Type *base, size_t num_elems, bool incomplete_elems) {
    uint64_t hash = FUNC1(FUNC2(base), FUNC3(num_elems));
    uint64_t key = hash ? hash : 1;
    CachedArrayType *cached = FUNC4(&cached_array_types, key);
    if (!incomplete_elems) {
        for (CachedArrayType *it = cached; it; it = it->next) {
            Type *type = it->type;
            if (type->base == base && type->num_elems == num_elems) {
                return type;
            }
        }
    }
    FUNC0(base);
    Type *type = FUNC7(TYPE_ARRAY);
    type->nonmodifiable = base->nonmodifiable;
    type->size = num_elems * FUNC8(base);
    type->align = FUNC6(base);
    type->base = base;
    type->num_elems = num_elems;
    type->incomplete_elems = incomplete_elems;
    if (!incomplete_elems) {
        CachedArrayType *new_cached = FUNC9(sizeof(CachedArrayType));
        new_cached->type = type;
        new_cached->next = cached;
        FUNC5(&cached_array_types, key, new_cached);
    }
    return type;
}