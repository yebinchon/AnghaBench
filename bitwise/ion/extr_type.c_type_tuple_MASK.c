#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_17__ {struct TYPE_17__* next; TYPE_4__* type; } ;
typedef  TYPE_3__ TypeLink ;
struct TYPE_16__ {size_t num_fields; TYPE_1__* fields; } ;
struct TYPE_18__ {TYPE_2__ aggregate; } ;
typedef  TYPE_4__ Type ;
struct TYPE_15__ {TYPE_4__* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_TUPLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  cached_tuple_types ; 
 int FUNC1 (TYPE_4__**,size_t) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,TYPE_3__*) ; 
 int /*<<< orphan*/  tuple_types ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_4__**,size_t) ; 
 TYPE_3__* FUNC6 (int) ; 

Type *FUNC7(Type **fields, size_t num_fields) {
    size_t fields_size = num_fields * sizeof(*fields);
    uint64_t hash = FUNC1(fields, fields_size);
    uint64_t key = hash ? hash : 1;
    TypeLink *cached = FUNC2(&cached_tuple_types, key);
    for (TypeLink *it = cached; it; it = it->next) {
        Type *cached_type = it->type;
        if (cached_type->aggregate.num_fields == num_fields) {
            for (size_t i = 0; i < num_fields; i++) {
                if (cached_type->aggregate.fields[i].type != fields[i]) {
                    goto next;
                }
            }
            return cached_type;
        }
        next: ;
    }
    Type *type = FUNC4(TYPE_TUPLE);
    FUNC5(type, fields, num_fields);
    TypeLink *new_cached = FUNC6(sizeof(TypeLink));
    new_cached->type = type;
    new_cached->next = cached;
    FUNC3(&cached_tuple_types, key, new_cached);
    FUNC0(tuple_types, type);
    return type;
}