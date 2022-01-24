#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_4__ {int len; int size; TYPE_2__* ptr; } ;
typedef  TYPE_1__ Type ;
typedef  int /*<<< orphan*/  Token ;
struct TYPE_5__ {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int,int) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(Vector *inits, Type *ty, int off, bool designated) {
    bool has_brace = FUNC4();
    bool flexible = (ty->len <= 0);
    int elemsize = ty->ptr->size;
    int i;
    for (i = 0; flexible || i < ty->len; i++) {
        Token *tok = FUNC2();
        if (FUNC3(tok, '}')) {
            if (!has_brace)
                FUNC10(tok);
            goto finish;
        }
        if ((FUNC3(tok, '.') || FUNC3(tok, '[')) && !has_brace && !designated) {
            FUNC10(tok);
            return;
        }
        if (FUNC3(tok, '[')) {
            Token *tok = FUNC6();
            int idx = FUNC8();
            if (idx < 0 || (!flexible && ty->len <= idx))
                FUNC0(tok, "array designator exceeds array bounds: %d", idx);
            i = idx;
            FUNC1(']');
            designated = true;
        } else {
            FUNC10(tok);
        }
        FUNC7(inits, ty->ptr, off + elemsize * i, designated);
        FUNC5();
        designated = false;
    }
    if (has_brace)
        FUNC9();
 finish:
    if (ty->len < 0) {
        ty->len = i;
        ty->size = elemsize * i;
    }
}