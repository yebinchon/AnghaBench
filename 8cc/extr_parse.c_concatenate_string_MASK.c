#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int enc; scalar_t__ slen; int /*<<< orphan*/  sval; } ;
typedef  TYPE_1__ Token ;
struct TYPE_8__ {scalar_t__ kind; } ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int ENC_NONE ; 
 scalar_t__ TSTRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 TYPE_4__* FUNC6 () ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC9(Token *tok) {
    int enc = tok->enc;
    Buffer *b = FUNC5();
    FUNC0(b, tok->sval, tok->slen - 1);
    while (FUNC6()->kind == TSTRING) {
        Token *tok2 = FUNC7();
        FUNC0(b, tok2->sval, tok2->slen - 1);
        int enc2 = tok2->enc;
        if (enc != ENC_NONE && enc2 != ENC_NONE && enc != enc2)
            FUNC4(tok2, "unsupported non-standard concatenation of string literals: %s", FUNC8(tok2));
        if (enc == ENC_NONE)
            enc = enc2;
    }
    FUNC3(b, '\0');
    tok->sval = FUNC1(b);
    tok->slen = FUNC2(b);
    tok->enc = enc;
}