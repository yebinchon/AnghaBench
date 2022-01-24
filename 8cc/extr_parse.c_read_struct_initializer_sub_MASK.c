#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_11__ {int /*<<< orphan*/  is_struct; scalar_t__ offset; int /*<<< orphan*/  fields; } ;
typedef  TYPE_1__ Type ;
struct TYPE_12__ {scalar_t__ kind; char* sval; } ;
typedef  TYPE_2__ Token ;

/* Variables and functions */
 scalar_t__ TIDENT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_2__*,char) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(Vector *inits, Type *ty, int off, bool designated) {
    bool has_brace = FUNC5();
    Vector *keys = FUNC1(ty->fields);
    int i = 0;
    for (;;) {
        Token *tok = FUNC3();
        if (FUNC4(tok, '}')) {
            if (!has_brace)
                FUNC11(tok);
            return;
        }
        char *fieldname;
        Type *fieldtype;
        if ((FUNC4(tok, '.') || FUNC4(tok, '[')) && !has_brace && !designated) {
            FUNC11(tok);
            return;
        }
        if (FUNC4(tok, '.')) {
            tok = FUNC3();
            if (!tok || tok->kind != TIDENT)
                FUNC2(tok, "malformed desginated initializer: %s", FUNC10(tok));
            fieldname = tok->sval;
            fieldtype = FUNC0(ty->fields, fieldname);
            if (!fieldtype)
                FUNC2(tok, "field does not exist: %s", FUNC10(tok));
            keys = FUNC1(ty->fields);
            i = 0;
            while (i < FUNC13(keys)) {
                char *s = FUNC12(keys, i++);
                if (FUNC9(fieldname, s) == 0)
                    break;
            }
            designated = true;
        } else {
            FUNC11(tok);
            if (i == FUNC13(keys))
                break;
            fieldname = FUNC12(keys, i++);
            fieldtype = FUNC0(ty->fields, fieldname);
        }
        FUNC7(inits, fieldtype, off + fieldtype->offset, designated);
        FUNC6();
        designated = false;
        if (!ty->is_struct)
            break;
    }
    if (has_brace)
        FUNC8();
}