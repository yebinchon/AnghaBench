#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_15__ {scalar_t__ kind; } ;
typedef  TYPE_1__ Type ;
typedef  int /*<<< orphan*/  Token ;
struct TYPE_16__ {TYPE_1__* ty; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 scalar_t__ FUNC9 (char) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_1__* type_double ; 
 TYPE_1__* type_int ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static Vector *FUNC15(Vector *params) {
    Vector *args = FUNC8();
    int i = 0;
    for (;;) {
        if (FUNC9(')')) break;
        Node *arg = FUNC1(FUNC10());
        Type *paramtype;
        if (i < FUNC13(params)) {
            paramtype = FUNC12(params, i++);
        } else {
            paramtype = FUNC5(arg->ty) ? type_double :
                FUNC6(arg->ty) ? type_int :
                arg->ty;
        }
        FUNC2(paramtype, arg->ty);
        if (paramtype->kind != arg->ty->kind)
            arg = FUNC0(paramtype, arg);
        FUNC14(args, arg);
        Token *tok = FUNC4();
        if (FUNC7(tok, ')')) break;
        if (!FUNC7(tok, ','))
            FUNC3(tok, "unexpected token: '%s'", FUNC11(tok));
    }
    return args;
}