#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_6__ {scalar_t__ kind; } ;
struct TYPE_5__ {TYPE_4__* ty; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 scalar_t__ KIND_STRUCT ; 
 int /*<<< orphan*/  SAVE ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(Vector *ints, Vector *floats, Vector *rest, Vector *args) {
    SAVE;
    int ireg = 0, xreg = 0;
    int imax = 6, xmax = 8;
    for (int i = 0; i < FUNC2(args); i++) {
        Node *v = FUNC1(args, i);
        if (v->ty->kind == KIND_STRUCT)
            FUNC3(rest, v);
        else if (FUNC0(v->ty))
            FUNC3((xreg++ < xmax) ? floats : rest, v);
        else
            FUNC3((ireg++ < imax) ? ints : rest, v);
    }
}