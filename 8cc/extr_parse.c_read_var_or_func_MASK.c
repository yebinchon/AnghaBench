#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ kind; } ;
typedef  TYPE_1__ Type ;
typedef  int /*<<< orphan*/  Token ;
struct TYPE_9__ {TYPE_1__* ty; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 scalar_t__ KIND_FUNC ; 
 TYPE_2__* FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  type_int ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static Node *FUNC9(char *name) {
    Node *v = FUNC6(FUNC1(), name);
    if (!v) {
        Token *tok = FUNC7();
        if (!FUNC3(tok, '('))
            FUNC2(tok, "undefined variable: %s", name);
        Type *ty = FUNC4(type_int, FUNC5(), true, false);
        FUNC8(tok, "assume returning int: %s()", name);
        return FUNC0(ty, name);
    }
    if (v->ty->kind == KIND_FUNC)
        return FUNC0(v->ty, name);
    return v;
}