#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_7__ {scalar_t__ hasva; } ;
typedef  TYPE_2__ Type ;
struct TYPE_9__ {TYPE_1__* ty; } ;
struct TYPE_8__ {scalar_t__ kind; int /*<<< orphan*/  ty; int /*<<< orphan*/  fname; TYPE_5__* fptr; int /*<<< orphan*/  args; TYPE_2__* ftype; } ;
struct TYPE_6__ {TYPE_2__* ptr; } ;
typedef  TYPE_3__ Node ;

/* Variables and functions */
 scalar_t__ AST_FUNCPTR_CALL ; 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int stackpos ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(Node *node) {
    SAVE;
    int opos = stackpos;
    bool isptr = (node->kind == AST_FUNCPTR_CALL);
    Type *ftype = isptr ? node->fptr->ty->ptr : node->ftype;

    Vector *ints = FUNC5();
    Vector *floats = FUNC5();
    Vector *rest = FUNC5();
    FUNC1(ints, floats, rest, node->args);
    FUNC12(FUNC13(ints), FUNC13(floats));

    bool padding = stackpos % 16;
    if (padding) {
        FUNC2("sub $8, #rsp");
        stackpos += 8;
    }

    int restsize = FUNC3(FUNC14(rest));
    if (isptr) {
        FUNC4(node->fptr);
        FUNC10("rax");
    }
    FUNC3(ints);
    FUNC3(floats);
    FUNC8(FUNC13(floats));
    FUNC9(FUNC13(ints));

    if (isptr) FUNC7("r11");
    if (ftype->hasva)
        FUNC2("mov $%u, #eax", FUNC13(floats));

    if (isptr)
        FUNC2("call *#r11");
    else
        FUNC2("call %s", node->fname);
    FUNC6(node->ty);
    if (restsize > 0) {
        FUNC2("add $%d, #rsp", restsize);
        stackpos -= restsize;
    }
    if (padding) {
        FUNC2("add $8, #rsp");
        stackpos -= 8;
    }
    FUNC11(FUNC13(ints), FUNC13(floats));
    FUNC0(opos == stackpos);
}