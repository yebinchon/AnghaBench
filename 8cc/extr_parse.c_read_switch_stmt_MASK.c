#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_16__ {int /*<<< orphan*/  ty; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (char*) ; 
 TYPE_1__* FUNC5 (char*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cases ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 char* defaultcase ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 char* FUNC10 () ; 
 TYPE_1__* FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 TYPE_1__* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static Node *FUNC19() {
    FUNC9('(');
    Node *expr = FUNC7(FUNC14());
    FUNC8(expr);
    FUNC9(')');

    char *end = FUNC10();
    FUNC1(end);
    Node *body = FUNC15();
    Vector *v = FUNC13();
    Node *var = FUNC6(expr->ty, FUNC12());
    FUNC18(v, FUNC2(expr->ty, '=', var, expr));
    for (int i = 0; i < FUNC17(cases); i++)
        FUNC18(v, FUNC11(var, FUNC16(cases, i)));
    FUNC18(v, FUNC5(defaultcase ? defaultcase : end));
    if (body)
        FUNC18(v, body);
    FUNC18(v, FUNC4(end));
    FUNC0();
    return FUNC3(v);
}