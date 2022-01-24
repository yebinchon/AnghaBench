#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {scalar_t__ kind; int position; int /*<<< orphan*/ * hideset; scalar_t__ is_vararg; } ;
typedef  TYPE_1__ Vector ;
typedef  TYPE_1__ Token ;
struct TYPE_32__ {TYPE_1__* body; } ;
typedef  int /*<<< orphan*/  Set ;
typedef  TYPE_3__ Macro ;

/* Variables and functions */
 char KHASHHASH ; 
 scalar_t__ TMACRO_PARAM ; 
 TYPE_1__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char) ; 
 TYPE_1__* FUNC4 () ; 
 TYPE_1__* FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static Vector *FUNC13(Macro *macro, Vector *args, Set *hideset) {
    Vector *r = FUNC4();
    int len = FUNC9(macro->body);
    for (int i = 0; i < len; i++) {
        Token *t0 = FUNC7(macro->body, i);
        Token *t1 = (i == len - 1) ? NULL : FUNC7(macro->body, i + 1);
        bool t0_param = (t0->kind == TMACRO_PARAM);
        bool t1_param = (t1 && t1->kind == TMACRO_PARAM);

        if (FUNC3(t0, '#') && t1_param) {
            FUNC11(r, FUNC5(t0, FUNC7(args, t1->position)));
            i++;
            continue;
        }
        if (FUNC3(t0, KHASHHASH) && t1_param) {
            Vector *arg = FUNC7(args, t1->position);
            // [GNU] [,##__VA_ARG__] is expanded to the empty token sequence
            // if __VA_ARG__ is empty. Otherwise it's expanded to
            // [,<tokens in __VA_ARG__>].
            if (t1->is_vararg && FUNC9(r) > 0 && FUNC3(FUNC12(r), ',')) {
                if (FUNC9(arg) > 0)
                    FUNC6(r, arg);
                else
                    FUNC10(r);
            } else if (FUNC9(arg) > 0) {
                FUNC2(r, FUNC8(arg));
                for (int i = 1; i < FUNC9(arg); i++)
                    FUNC11(r, FUNC7(arg, i));
            }
            i++;
            continue;
        }
        if (FUNC3(t0, KHASHHASH) && t1) {
            hideset = t1->hideset;
            FUNC2(r, t1);
            i++;
            continue;
        }
        if (t0_param && t1 && FUNC3(t1, KHASHHASH)) {
            hideset = t1->hideset;
            Vector *arg = FUNC7(args, t0->position);
            if (FUNC9(arg) == 0)
                i++;
            else
                FUNC6(r, arg);
            continue;
        }
        if (t0_param) {
            Vector *arg = FUNC7(args, t0->position);
            FUNC6(r, FUNC1(arg, t0));
            continue;
        }
        FUNC11(r, t0);
    }
    return FUNC0(r, hideset);
}