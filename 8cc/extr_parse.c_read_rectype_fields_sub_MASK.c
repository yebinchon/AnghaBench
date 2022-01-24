#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_10__ {scalar_t__ kind; int bitsize; } ;
typedef  TYPE_1__ Type ;

/* Variables and functions */
 int /*<<< orphan*/  DECL_PARAM_TYPEONLY ; 
 scalar_t__ KIND_STRUCT ; 
 char KSTATIC_ASSERT ; 
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (char*,TYPE_1__*) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (char**,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static Vector *FUNC15() {
    Vector *r = FUNC6();
    for (;;) {
        if (FUNC7(KSTATIC_ASSERT)) {
            FUNC12();
            continue;
        }
        if (!FUNC4(FUNC8()))
            break;
        Type *basetype = FUNC10(NULL);
        if (basetype->kind == KIND_STRUCT && FUNC7(';')) {
            FUNC13(r, FUNC5(NULL, basetype));
            continue;
        }
        for (;;) {
            char *name = NULL;
            Type *fieldtype = FUNC11(&name, basetype, NULL, DECL_PARAM_TYPEONLY);
            FUNC1(fieldtype);
            fieldtype = FUNC0(fieldtype);
            fieldtype->bitsize = FUNC7(':') ? FUNC9(name, fieldtype) : -1;
            FUNC13(r, FUNC5(name, fieldtype));
            if (FUNC7(','))
                continue;
            if (FUNC3(FUNC8(), '}'))
                FUNC14(FUNC8(), "missing ';' at the end of field list");
            else
                FUNC2(';');
            break;
        }
    }
    FUNC2('}');
    return r;
}