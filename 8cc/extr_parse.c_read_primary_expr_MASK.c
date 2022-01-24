#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int kind; int /*<<< orphan*/  slen; int /*<<< orphan*/  sval; int /*<<< orphan*/  enc; int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ Token ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 char KGENERIC ; 
#define  TCHAR 132 
#define  TIDENT 131 
#define  TKEYWORD 130 
#define  TNUMBER 129 
#define  TSTRING 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 TYPE_1__* FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_1__*,char) ; 
 scalar_t__ FUNC7 (char) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static Node *FUNC14() {
    Token *tok = FUNC5();
    if (!tok) return NULL;
    if (FUNC6(tok, '(')) {
        if (FUNC7('{'))
            return FUNC11();
        Node *r = FUNC8();
        FUNC4(')');
        return r;
    }
    if (FUNC6(tok, KGENERIC)) {
        return FUNC9();
    }
    switch (tok->kind) {
    case TIDENT:
        return FUNC12(tok->sval);
    case TNUMBER:
        return FUNC10(tok);
    case TCHAR:
        return FUNC0(FUNC2(tok->enc), tok->c);
    case TSTRING:
        return FUNC1(tok->enc, tok->sval, tok->slen);
    case TKEYWORD:
        FUNC13(tok);
        return NULL;
    default:
        FUNC3("internal error: unknown token kind: %d", tok->kind);
    }
}