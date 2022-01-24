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
typedef  int /*<<< orphan*/  Typespec ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  SrcPos ;

/* Variables and functions */
 int /*<<< orphan*/  TOKEN_DOT ; 
 int /*<<< orphan*/  TOKEN_LBRACE ; 
 int /*<<< orphan*/  TOKEN_LPAREN ; 
 int /*<<< orphan*/  TOKEN_NAME ; 
 int /*<<< orphan*/  TOKEN_RPAREN ; 
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  func_keyword ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 TYPE_1__ token ; 
 int /*<<< orphan*/  FUNC13 () ; 

Typespec *FUNC14(void) {
    if (FUNC4(TOKEN_NAME)) {
        SrcPos pos = token.pos;
        const char **names = NULL;
        FUNC1(names, token.name);
        FUNC8();
        while (FUNC6(TOKEN_DOT)) {
            FUNC1(names, FUNC9());
        }
        return FUNC7(pos, names, FUNC0(names));
    } else if (FUNC5(func_keyword)) {
        return FUNC11();
    } else if (FUNC6(TOKEN_LPAREN)) {
        Typespec *type = FUNC10();
        FUNC2(TOKEN_RPAREN);
        return type;
    } else if (FUNC6(TOKEN_LBRACE)) {
        return FUNC12();
    } else {
        FUNC3("Unexpected token %s in type", FUNC13());
        return NULL;
    }
}