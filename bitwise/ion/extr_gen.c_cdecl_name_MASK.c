#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t kind; int /*<<< orphan*/  sym; int /*<<< orphan*/  typeid; } ;
typedef  TYPE_1__ Type ;

/* Variables and functions */
 size_t TYPE_TUPLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 char const* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char** type_names ; 

const char *FUNC3(Type *type) {
    const char *type_name = type_names[type->kind];
    if (type_name) {
        return type_name;
    } else if (type->kind == TYPE_TUPLE) {
        return FUNC2("tuple%d", type->typeid);
    } else {
        FUNC0(type->sym);
        return FUNC1(type->sym);
    }
}