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
struct TYPE_5__ {int offset; int /*<<< orphan*/  fields; } ;
typedef  TYPE_1__ Type ;
typedef  int /*<<< orphan*/  Dict ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(Dict *dict, Type *unnamed, int offset) {
    Vector *keys = FUNC2(unnamed->fields);
    for (int i = 0; i < FUNC5(keys); i++) {
        char *name = FUNC4(keys, i);
        Type *t = FUNC0(FUNC1(unnamed->fields, name));
        t->offset += offset;
        FUNC3(dict, name, t);
    }
}