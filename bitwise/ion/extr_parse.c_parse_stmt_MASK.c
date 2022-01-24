#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  pos; } ;
struct TYPE_17__ {int /*<<< orphan*/  notes; } ;
typedef  TYPE_1__ Stmt ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  int /*<<< orphan*/  Notes ;
typedef  int /*<<< orphan*/  Note ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  TOKEN_COLON ; 
 int /*<<< orphan*/  TOKEN_LBRACE ; 
 int /*<<< orphan*/  TOKEN_POUND ; 
 int /*<<< orphan*/  TOKEN_SEMICOLON ; 
 int /*<<< orphan*/  break_keyword ; 
 int /*<<< orphan*/  continue_keyword ; 
 int /*<<< orphan*/  do_keyword ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  for_keyword ; 
 int /*<<< orphan*/  goto_keyword ; 
 int /*<<< orphan*/  if_keyword ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 TYPE_1__* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC18 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC19 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC20 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  return_keyword ; 
 int /*<<< orphan*/  switch_keyword ; 
 TYPE_2__ token ; 
 int /*<<< orphan*/  while_keyword ; 

Stmt *FUNC22(void) {
    Notes notes = FUNC14();
    SrcPos pos = token.pos;
    Stmt *stmt = NULL;
    if (FUNC2(if_keyword)) {
        stmt = FUNC19(pos);
    } else if (FUNC2(while_keyword)) {
        stmt = FUNC21(pos);
    } else if (FUNC2(do_keyword)) {
        stmt = FUNC17(pos);
    } else if (FUNC2(for_keyword)) {
        stmt = FUNC18(pos);
    } else if (FUNC2(switch_keyword)) {
        stmt = FUNC20(pos);
    } else if (FUNC1(TOKEN_LBRACE)) {
        stmt = FUNC4(pos, FUNC16());
    } else if (FUNC2(break_keyword)) {
        FUNC0(TOKEN_SEMICOLON);
        stmt = FUNC5(pos);
    } else if (FUNC2(continue_keyword)) {
        FUNC0(TOKEN_SEMICOLON);
        stmt = FUNC6(pos);
    } else if (FUNC2(return_keyword)) {
        Expr *expr = NULL;
        if (!FUNC1(TOKEN_SEMICOLON)) {
            expr = FUNC11();
        }
        FUNC0(TOKEN_SEMICOLON);
        stmt = FUNC10(pos, expr);
    } else if (FUNC3(TOKEN_POUND)) {
        Note note = FUNC13();
        FUNC0(TOKEN_SEMICOLON);
        stmt = FUNC9(pos, note);
    } else if (FUNC3(TOKEN_COLON)) {
        stmt = FUNC8(pos, FUNC12());
    } else if (FUNC2(goto_keyword)) {
        stmt = FUNC7(pos, FUNC12());
        FUNC0(TOKEN_SEMICOLON);
    } else {
        stmt = FUNC15();
        FUNC0(TOKEN_SEMICOLON);
    }
    stmt->notes = notes;
    return stmt;
}