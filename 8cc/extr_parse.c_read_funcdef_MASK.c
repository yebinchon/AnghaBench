#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_7__ {int hasva; int isstatic; int /*<<< orphan*/  params; scalar_t__ oldstyle; } ;
typedef  TYPE_1__ Type ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  DECL_BODY ; 
 int S_STATIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  globalenv ; 
 void* gotos ; 
 int /*<<< orphan*/  labels ; 
 int /*<<< orphan*/ * localenv ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int*) ; 
 TYPE_1__* FUNC8 (char**,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Node *FUNC12() {
    int sclass = 0;
    Type *basetype = FUNC7(&sclass);
    localenv = FUNC4(globalenv);
    gotos = FUNC5();
    labels = FUNC3();
    char *name;
    Vector *params = FUNC5();
    Type *functype = FUNC8(&name, basetype, params, DECL_BODY);
    if (functype->oldstyle) {
        if (FUNC11(params) == 0)
            functype->hasva = false;
        FUNC10(params);
        functype->params = FUNC6(params);
    }
    functype->isstatic = (sclass == S_STATIC);
    FUNC0(functype, name);
    FUNC2('{');
    Node *r = FUNC9(functype, name, params);
    FUNC1();
    localenv = NULL;
    return r;
}