#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_9__ {scalar_t__ bitsize; } ;
struct TYPE_8__ {scalar_t__ kind; } ;
struct TYPE_7__ {scalar_t__ kind; scalar_t__ initoff; TYPE_4__* totype; TYPE_3__* initval; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 scalar_t__ AST_INIT ; 
 scalar_t__ AST_LITERAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*,scalar_t__) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(Vector *inits, int off, int totalsize) {
    FUNC2(inits, off, totalsize);
    for (int i = 0; i < FUNC6(inits); i++) {
        Node *node = FUNC5(inits, i);
        FUNC0(node->kind == AST_INIT);
        bool isbitfield = (node->totype->bitsize > 0);
        if (node->initval->kind == AST_LITERAL && !isbitfield) {
            FUNC4(node->initval, node->totype, node->initoff + off);
        } else {
            FUNC1(node->initval);
            FUNC3(node->totype, node->initoff + off);
        }
    }
}