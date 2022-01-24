#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int loff; TYPE_1__* ty; int /*<<< orphan*/  localvars; int /*<<< orphan*/  params; int /*<<< orphan*/  fname; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; scalar_t__ hasva; int /*<<< orphan*/  isstatic; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  SAVE ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int stackpos ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(Node *func) {
    SAVE;
    FUNC2(".text");
    if (!func->ty->isstatic)
        FUNC3(".global %s", func->fname);
    FUNC3("%s:", func->fname);
    FUNC2("nop");
    FUNC5("rbp");
    FUNC2("mov #rsp, #rbp");
    int off = 0;
    if (func->ty->hasva) {
        FUNC7(func->params);
        off -= FUNC4();
    }
    FUNC6(func->params, off);
    off -= FUNC9(func->params) * 8;

    int localarea = 0;
    for (int i = 0; i < FUNC9(func->localvars); i++) {
        Node *v = FUNC8(func->localvars, i);
        int size = FUNC0(v->ty->size, 8);
        FUNC1(size % 8 == 0);
        off -= size;
        v->loff = off;
        localarea += size;
    }
    if (localarea) {
        FUNC2("sub $%d, #rsp", localarea);
        stackpos += localarea;
    }
}