#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ kind; char* sval; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ Token ;

/* Variables and functions */
 scalar_t__ TIDENT ; 
 scalar_t__ TNEWLINE ; 
 scalar_t__ TNUMBER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC19(Token *hash) {
    Token *tok = FUNC1();
    if (tok->kind == TNEWLINE)
        return;
    if (tok->kind == TNUMBER) {
        FUNC13(tok);
        return;
    }
    if (tok->kind != TIDENT)
        goto err;
    char *s = tok->sval;
    if (!FUNC17(s, "define"))            FUNC2();
    else if (!FUNC17(s, "elif"))         FUNC3(hash);
    else if (!FUNC17(s, "else"))         FUNC4(hash);
    else if (!FUNC17(s, "endif"))        FUNC5(hash);
    else if (!FUNC17(s, "error"))        FUNC6(hash);
    else if (!FUNC17(s, "if"))           FUNC7();
    else if (!FUNC17(s, "ifdef"))        FUNC8();
    else if (!FUNC17(s, "ifndef"))       FUNC9();
    else if (!FUNC17(s, "import"))       FUNC10(hash, tok->file, true);
    else if (!FUNC17(s, "include"))      FUNC10(hash, tok->file, false);
    else if (!FUNC17(s, "include_next")) FUNC11(hash, tok->file);
    else if (!FUNC17(s, "line"))         FUNC12();
    else if (!FUNC17(s, "pragma"))       FUNC14();
    else if (!FUNC17(s, "undef"))        FUNC15();
    else if (!FUNC17(s, "warning"))      FUNC16(hash);
    else goto err;
    return;

  err:
    FUNC0(hash, "unsupported preprocessor directive: %s", FUNC18(tok));
}