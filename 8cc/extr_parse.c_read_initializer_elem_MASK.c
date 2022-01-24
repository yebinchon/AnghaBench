#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_9__ {scalar_t__ kind; } ;
typedef  TYPE_1__ Type ;
struct TYPE_10__ {int /*<<< orphan*/  ty; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 scalar_t__ KIND_ARRAY ; 
 scalar_t__ KIND_STRUCT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(Vector *inits, Type *ty, int off, bool designated) {
    FUNC4('=');
    if (ty->kind == KIND_ARRAY || ty->kind == KIND_STRUCT) {
        FUNC6(inits, ty, off, designated);
    } else if (FUNC4('{')) {
        FUNC8(inits, ty, off, true);
        FUNC3('}');
    } else {
        Node *expr = FUNC1(FUNC5());
        FUNC2(ty, expr->ty);
        FUNC7(inits, FUNC0(expr, ty, off));
    }
}