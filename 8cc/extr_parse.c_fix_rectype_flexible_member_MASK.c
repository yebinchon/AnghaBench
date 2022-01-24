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
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_3__ {scalar_t__ kind; int len; scalar_t__ size; } ;
typedef  TYPE_1__ Type ;

/* Variables and functions */
 scalar_t__ KIND_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void** FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(Vector *fields) {
    for (int i = 0; i < FUNC3(fields); i++) {
        void **pair = FUNC2(fields, i);
        char *name = pair[0];
        Type *ty = pair[1];
        if (ty->kind != KIND_ARRAY)
            continue;
        if (ty->len == -1) {
            if (i != FUNC3(fields) - 1)
                FUNC0("flexible member may only appear as the last member: %s %s", FUNC1(ty), name);
            if (FUNC3(fields) == 1)
                FUNC0("flexible member with no other fields: %s %s", FUNC1(ty), name);
            ty->len = 0;
            ty->size = 0;
        }
    }
}