#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ kind; int /*<<< orphan*/  sval; } ;
typedef  TYPE_2__ Token ;
struct TYPE_17__ {TYPE_1__* ty; } ;
struct TYPE_15__ {scalar_t__ kind; } ;
typedef  TYPE_3__ Node ;

/* Variables and functions */
 scalar_t__ KIND_PTR ; 
 scalar_t__ TIDENT ; 
 TYPE_3__* FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  gotos ; 
 scalar_t__ FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 TYPE_2__* FUNC7 () ; 
 TYPE_3__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static Node *FUNC11() {
    if (FUNC5('*')) {
        // [GNU] computed goto. "goto *p" jumps to the address pointed by p.
        Token *tok = FUNC7();
        Node *expr = FUNC8();
        if (expr->ty->kind != KIND_PTR)
            FUNC2(tok, "pointer expected for computed goto, but got %s", FUNC6(expr));
        return FUNC0(expr);
    }
    Token *tok = FUNC4();
    if (!tok || tok->kind != TIDENT)
        FUNC2(tok, "identifier expected, but got %s", FUNC9(tok));
    FUNC3(';');
    Node *r = FUNC1(tok->sval);
    FUNC10(gotos, r);
    return r;
}