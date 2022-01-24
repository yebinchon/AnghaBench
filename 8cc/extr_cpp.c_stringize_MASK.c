#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_8__ {int /*<<< orphan*/  enc; scalar_t__ slen; int /*<<< orphan*/  sval; int /*<<< orphan*/  kind; scalar_t__ space; } ;
typedef  TYPE_1__ Token ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  ENC_NONE ; 
 int /*<<< orphan*/  TSTRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Token *FUNC9(Token *tmpl, Vector *args) {
    Buffer *b = FUNC5();
    for (int i = 0; i < FUNC8(args); i++) {
        Token *tok = FUNC7(args, i);
        if (FUNC1(b) && tok->space)
            FUNC2(b, " ");
        FUNC2(b, "%s", FUNC6(tok));
    }
    FUNC3(b, '\0');
    Token *r = FUNC4(tmpl);
    r->kind = TSTRING;
    r->sval = FUNC0(b);
    r->slen = FUNC1(b);
    r->enc = ENC_NONE;
    return r;
}