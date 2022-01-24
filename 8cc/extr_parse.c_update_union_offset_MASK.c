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
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_4__ {scalar_t__ kind; scalar_t__ bitsize; scalar_t__ bitoff; scalar_t__ offset; int /*<<< orphan*/  align; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ Type ;
typedef  int /*<<< orphan*/  Dict ;

/* Variables and functions */
 scalar_t__ KIND_STRUCT ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 void** FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Dict *FUNC7(int *rsize, int *align, Vector *fields) {
    int maxsize = 0;
    Dict *r = FUNC3();
    for (int i = 0; i < FUNC6(fields); i++) {
        void **pair = FUNC5(fields, i);
        char *name = pair[0];
        Type *fieldtype = pair[1];
        maxsize = FUNC0(maxsize, fieldtype->size);
        *align = FUNC0(*align, fieldtype->align);
        if (name == NULL && fieldtype->kind == KIND_STRUCT) {
            FUNC4(r, fieldtype, 0);
            continue;
        }
        fieldtype->offset = 0;
        if (fieldtype->bitsize >= 0)
            fieldtype->bitoff = 0;
        if (name)
            FUNC2(r, name, fieldtype);
    }
    *rsize = maxsize + FUNC1(maxsize, *align);
    return r;
}