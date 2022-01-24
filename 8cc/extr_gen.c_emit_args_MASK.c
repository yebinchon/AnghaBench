#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_7__ {scalar_t__ kind; int /*<<< orphan*/  size; } ;
struct TYPE_6__ {TYPE_3__* ty; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 scalar_t__ KIND_STRUCT ; 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(Vector *vals) {
    SAVE;
    int r = 0;
    for (int i = 0; i < FUNC7(vals); i++) {
        Node *v = FUNC6(vals, i);
        if (v->ty->kind == KIND_STRUCT) {
            FUNC0(v);
            r += FUNC4(v->ty->size);
        } else if (FUNC2(v->ty)) {
            FUNC1(v);
            FUNC5(0);
            r += 8;
        } else {
            FUNC1(v);
            FUNC3("rax");
            r += 8;
        }
    }
    return r;
}