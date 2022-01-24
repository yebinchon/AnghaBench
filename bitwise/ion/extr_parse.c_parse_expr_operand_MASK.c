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
typedef  int /*<<< orphan*/  TokenSuffix ;
typedef  int /*<<< orphan*/  TokenMod ;
struct TYPE_2__ {unsigned long long int_val; char* start; char* end; double float_val; char* str_val; char* name; int /*<<< orphan*/  mod; int /*<<< orphan*/  suffix; int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  TOKEN_COLON ; 
 int /*<<< orphan*/  TOKEN_COMMA ; 
 int /*<<< orphan*/  TOKEN_FLOAT ; 
 int /*<<< orphan*/  TOKEN_INT ; 
 int /*<<< orphan*/  TOKEN_LBRACE ; 
 int /*<<< orphan*/  TOKEN_LPAREN ; 
 int /*<<< orphan*/  TOKEN_NAME ; 
 int /*<<< orphan*/  TOKEN_RPAREN ; 
 int /*<<< orphan*/  TOKEN_STR ; 
 int /*<<< orphan*/  alignof_keyword ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char const*,char const*,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  new_keyword ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,char const**,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  offsetof_keyword ; 
 int /*<<< orphan*/ * FUNC20 () ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 char* FUNC24 () ; 
 int /*<<< orphan*/ * FUNC25 () ; 
 int /*<<< orphan*/  sizeof_keyword ; 
 TYPE_1__ token ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  typeof_keyword ; 

Expr *FUNC27(void) {
    SrcPos pos = token.pos;
    if (FUNC2(TOKEN_INT)) {
        unsigned long long val = token.int_val;
        TokenMod mod = token.mod;
        TokenSuffix suffix = token.suffix;
        FUNC19();
        return FUNC9(pos, val, mod, suffix);
    } else if (FUNC2(TOKEN_FLOAT)) {
        const char *start = token.start;
        const char *end = token.end;
        double val = token.float_val;
        TokenSuffix suffix = token.suffix;
        FUNC19();
        return FUNC8(pos, start, end, val, suffix);
    } else if (FUNC2(TOKEN_STR)) {
        const char *val = token.str_val;
        TokenMod mod = token.mod;
        FUNC19();
        return FUNC15(pos, val, mod);
    } else if (FUNC2(TOKEN_NAME)) {
        const char *name = token.name;
        FUNC19();
        if (FUNC2(TOKEN_LBRACE)) {
            return FUNC21(FUNC18(pos, &name, 1));
        } else {
            return FUNC10(pos, name);
        }
    } else if (FUNC3(new_keyword)) {
        return FUNC22(pos);
    } else if (FUNC3(sizeof_keyword)) {
        FUNC0(TOKEN_LPAREN);
        if (FUNC4(TOKEN_COLON)) {
            Typespec *type = FUNC25();
            FUNC0(TOKEN_RPAREN);
            return FUNC14(pos, type);
        } else {
            Expr *expr = FUNC20();
            FUNC0(TOKEN_RPAREN);
            return FUNC13(pos, expr);
        }
    } else if (FUNC3(alignof_keyword)) {
        FUNC0(TOKEN_LPAREN);
        if (FUNC4(TOKEN_COLON)) {
            Typespec *type = FUNC25();
            FUNC0(TOKEN_RPAREN);
            return FUNC6(pos, type);
        } else {
            Expr *expr = FUNC20();
            FUNC0(TOKEN_RPAREN);
            return FUNC5(pos, expr);
        }
    } else if (FUNC3(typeof_keyword)) {
        FUNC0(TOKEN_LPAREN);
        if (FUNC4(TOKEN_COLON)) {
            Typespec *type = FUNC25();
            FUNC0(TOKEN_RPAREN);
            return FUNC17(pos, type);
        } else {
            Expr *expr = FUNC20();
            FUNC0(TOKEN_RPAREN);
            return FUNC16(pos, expr);
        }
    } else if (FUNC3(offsetof_keyword)) {
        FUNC0(TOKEN_LPAREN);
        Typespec *type = FUNC25();
        FUNC0(TOKEN_COMMA);
        const char *name = FUNC24();
        FUNC0(TOKEN_RPAREN);
        return FUNC11(pos, type, name);
    } else if (FUNC2(TOKEN_LBRACE)) {
        return FUNC21(NULL);
    } else if (FUNC4(TOKEN_LPAREN)) {
        if (FUNC4(TOKEN_COLON)) {
            Typespec *type = FUNC25();
            FUNC0(TOKEN_RPAREN);
            if (FUNC2(TOKEN_LBRACE)) {
                return FUNC21(type);
            } else {
                return FUNC7(pos, type, FUNC23());
            }
        } else {
            Expr *expr = FUNC20();
            FUNC0(TOKEN_RPAREN);
            return FUNC12(pos, expr);
        }
    } else {
        FUNC1("Unexpected token %s in expression", FUNC26());
        return NULL;
    }
}