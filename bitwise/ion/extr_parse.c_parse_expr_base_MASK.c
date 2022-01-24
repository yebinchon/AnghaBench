#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TokenKind ;
struct TYPE_2__ {char* name; int /*<<< orphan*/  kind; int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  TOKEN_COMMA ; 
 int /*<<< orphan*/  TOKEN_DEC ; 
 int /*<<< orphan*/  TOKEN_DOT ; 
 int /*<<< orphan*/  TOKEN_INC ; 
 int /*<<< orphan*/  TOKEN_LBRACKET ; 
 int /*<<< orphan*/  TOKEN_LPAREN ; 
 int /*<<< orphan*/  TOKEN_NAME ; 
 int /*<<< orphan*/  TOKEN_RBRACKET ; 
 int /*<<< orphan*/  TOKEN_RPAREN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 TYPE_1__ token ; 

Expr *FUNC13(void) {
    Expr *expr = FUNC12();
    while (FUNC4(TOKEN_LPAREN) || FUNC4(TOKEN_LBRACKET) || FUNC4(TOKEN_DOT) || FUNC4(TOKEN_INC) || FUNC4(TOKEN_DEC)) {
        SrcPos pos = token.pos;
        if (FUNC5(TOKEN_LPAREN)) {
            Expr **args = NULL;
            if (!FUNC4(TOKEN_RPAREN)) {
                FUNC2(args, FUNC11());
                while (FUNC5(TOKEN_COMMA)) {
                    FUNC2(args, FUNC11());
                }
            }
            FUNC3(TOKEN_RPAREN);
            expr = FUNC6(pos, expr, args, FUNC1(args));
        } else if (FUNC5(TOKEN_LBRACKET)) {
            Expr *index = FUNC11();
            FUNC3(TOKEN_RBRACKET);
            expr = FUNC8(pos, expr, index);
        } else if (FUNC4(TOKEN_DOT)) {
            FUNC10();
            const char *field = token.name;
            FUNC3(TOKEN_NAME);
            expr = FUNC7(pos, expr, field);
        } else {
            FUNC0(FUNC4(TOKEN_INC) || FUNC4(TOKEN_DEC));
            TokenKind op = token.kind;
            FUNC10();
            expr = FUNC9(pos, op, true, expr);
        }
    }
    return expr;
}