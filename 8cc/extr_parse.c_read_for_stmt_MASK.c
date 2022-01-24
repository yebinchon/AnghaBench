#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_15__ {int /*<<< orphan*/  ty; } ;
typedef  TYPE_1__ Node ;
typedef  int /*<<< orphan*/  Map ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (char*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * localenv ; 
 char* FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 TYPE_1__* FUNC12 () ; 
 TYPE_1__* FUNC13 () ; 
 TYPE_1__* FUNC14 () ; 
 int /*<<< orphan*/  type_bool ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static Node *FUNC16() {
    FUNC7('(');
    char *beg = FUNC9();
    char *mid = FUNC9();
    char *end = FUNC9();
    Map *orig = localenv;
    localenv = FUNC10(localenv);
    Node *init = FUNC13();
    Node *cond = FUNC12();
    if (cond && FUNC8(cond->ty))
        cond = FUNC3(type_bool, cond);
    FUNC7(';');
    Node *step = FUNC12();
    FUNC7(')');
    FUNC1(mid, end);
    Node *body = FUNC14();
    FUNC0();
    localenv = orig;

    Vector *v = FUNC11();
    if (init)
        FUNC15(v, init);
    FUNC15(v, FUNC4(beg));
    if (cond)
        FUNC15(v, FUNC5(cond, NULL, FUNC6(end)));
    if (body)
        FUNC15(v, body);
    FUNC15(v, FUNC4(mid));
    if (step)
        FUNC15(v, step);
    FUNC15(v, FUNC6(beg));
    FUNC15(v, FUNC4(end));
    return FUNC2(v);
}