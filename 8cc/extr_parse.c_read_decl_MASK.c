#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_12__ {int isstatic; scalar_t__ kind; } ;
typedef  TYPE_1__ Type ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  DECL_BODY ; 
 scalar_t__ KIND_FUNC ; 
 int S_EXTERN ; 
 int S_STATIC ; 
 int S_TYPEDEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*) ; 
 TYPE_1__* FUNC10 (int*) ; 
 TYPE_1__* FUNC11 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(Vector *block, bool isglobal) {
    int sclass = 0;
    Type *basetype = FUNC10(&sclass);
    if (FUNC7(';'))
        return;
    for (;;) {
        char *name = NULL;
        Type *ty = FUNC11(&name, FUNC4(basetype), NULL, DECL_BODY);
        ty->isstatic = (sclass == S_STATIC);
        if (sclass == S_TYPEDEF) {
            FUNC3(ty, name);
        } else if (ty->isstatic && !isglobal) {
            FUNC5(ty);
            FUNC12(ty, name);
        } else {
            FUNC5(ty);
            Node *var = (isglobal ? ast_gvar : ast_lvar)(ty, name);
            if (FUNC7('=')) {
                FUNC15(block, FUNC0(var, FUNC9(ty)));
            } else if (sclass != S_EXTERN && ty->kind != KIND_FUNC) {
                FUNC15(block, FUNC0(var, NULL));
            }
        }
        if (FUNC7(';'))
            return;
        if (!FUNC7(','))
            FUNC6(FUNC8(), "';' or ',' are expected, but got %s", FUNC14(FUNC8()));
    }
}