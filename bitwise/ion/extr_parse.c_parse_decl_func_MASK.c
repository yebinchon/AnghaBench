#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Typespec ;
struct TYPE_8__ {int is_incomplete; } ;
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ StmtList ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  int /*<<< orphan*/  FuncParam ;
typedef  TYPE_2__ Decl ;

/* Variables and functions */
 int /*<<< orphan*/  TOKEN_COLON ; 
 int /*<<< orphan*/  TOKEN_COMMA ; 
 int /*<<< orphan*/  TOKEN_ELLIPSIS ; 
 int /*<<< orphan*/  TOKEN_LPAREN ; 
 int /*<<< orphan*/  TOKEN_RPAREN ; 
 int /*<<< orphan*/  TOKEN_SEMICOLON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* FUNC8 () ; 
 TYPE_1__ FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 () ; 

Decl *FUNC11(SrcPos pos) {
    const char *name = FUNC8();
    FUNC3(TOKEN_LPAREN);
    FuncParam *params = NULL;
    bool has_varargs = false;
    Typespec *varargs_type = NULL;
    if (!FUNC4(TOKEN_RPAREN)) {
        FUNC1(params, FUNC7());
        while (FUNC5(TOKEN_COMMA)) {
            if (FUNC5(TOKEN_ELLIPSIS)) {
                if (has_varargs) {
                    FUNC2("Multiple ellipsis in function declaration");
                }
                if (!FUNC4(TOKEN_RPAREN)) {
                    varargs_type = FUNC10();
                }
                has_varargs = true;
            } else {
                if (has_varargs) {
                    FUNC2("Ellipsis must be last parameter in function declaration");
                }
                FUNC1(params, FUNC7());
            }
        }
    }
    FUNC3(TOKEN_RPAREN);
    Typespec *ret_type = NULL;
    if (FUNC5(TOKEN_COLON)) {
        ret_type = FUNC10();
    }
    StmtList block = {0};
    bool is_incomplete;
    if (FUNC5(TOKEN_SEMICOLON)) {
        is_incomplete = true;
    } else {
        block = FUNC9();
        is_incomplete = false;
    }
    Decl *decl = FUNC6(pos, name, params, FUNC0(params), ret_type, has_varargs, varargs_type, block);
    decl->is_incomplete = is_incomplete;
    return decl;
}