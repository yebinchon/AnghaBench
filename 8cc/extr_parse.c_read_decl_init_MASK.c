#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_13__ {scalar_t__ kind; } ;
typedef  TYPE_1__ Type ;
struct TYPE_15__ {scalar_t__ kind; } ;
struct TYPE_14__ {TYPE_6__* ty; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_6__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Vector *FUNC11(Type *ty) {
    Vector *r = FUNC6();
    if (FUNC4(FUNC7(), '{') || FUNC5(ty)) {
        FUNC9(r, ty, 0, false);
    } else {
        Node *init = FUNC2(FUNC8());
        if (FUNC3(init->ty) && init->ty->kind != ty->kind)
            init = FUNC0(ty, init);
        FUNC10(r, FUNC1(init, ty, 0));
    }
    return r;
}