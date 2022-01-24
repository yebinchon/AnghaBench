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
struct TYPE_8__ {scalar_t__ kind; char* sval; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 scalar_t__ TNEWLINE ; 
 scalar_t__ TSTRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 TYPE_1__* FUNC4 () ; 
 char* FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static char *FUNC8(Token *hash, bool *std) {
    // Try reading a filename using a special tokenizer for #include.
    char *path = FUNC5(std);
    if (path)
        return path;

    // If a token following #include does not start with < nor ",
    // try to read the token as a regular token. Macro-expanded
    // form may be a valid header file path.
    Token *tok = FUNC4();
    if (tok->kind == TNEWLINE)
        FUNC0(hash, "expected filename, but got newline");
    if (tok->kind == TSTRING) {
        *std = false;
        return tok->sval;
    }
    if (!FUNC1(tok, '<'))
        FUNC0(tok, "< expected, but got %s", FUNC6(tok));
    Vector *tokens = FUNC3();
    for (;;) {
        Token *tok = FUNC4();
        if (tok->kind == TNEWLINE)
            FUNC0(hash, "premature end of header name");
        if (FUNC1(tok, '>'))
            break;
        FUNC7(tokens, tok);
    }
    *std = true;
    return FUNC2(tokens);
}