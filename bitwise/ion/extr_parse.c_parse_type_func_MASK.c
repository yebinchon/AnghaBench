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
struct TYPE_2__ {int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  SrcPos ;

/* Variables and functions */
 int /*<<< orphan*/  TOKEN_COLON ; 
 int /*<<< orphan*/  TOKEN_COMMA ; 
 int /*<<< orphan*/  TOKEN_ELLIPSIS ; 
 int /*<<< orphan*/  TOKEN_LPAREN ; 
 int /*<<< orphan*/  TOKEN_RPAREN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__ token ; 

Typespec *FUNC9(void) {
    SrcPos pos = token.pos;
    Typespec **args = NULL;
    bool has_varargs = false;
    FUNC3(TOKEN_LPAREN);
    if (!FUNC4(TOKEN_RPAREN)) {
        FUNC1(args, FUNC8());
        while (FUNC5(TOKEN_COMMA)) {
            if (FUNC5(TOKEN_ELLIPSIS)) {
                if (has_varargs) {
                    FUNC2("Multiple ellipsis instances in function type");
                }
                has_varargs = true;
            } else {
                if (has_varargs) {
                    FUNC2("Ellipsis must be last parameter in function type");
                }
                FUNC1(args, FUNC8());
            }
        }
    }
    FUNC3(TOKEN_RPAREN);
    Typespec *ret = NULL;
    if (FUNC5(TOKEN_COLON)) {
        ret = FUNC7();
    }
    return FUNC6(pos, args, FUNC0(args), ret, has_varargs);
}