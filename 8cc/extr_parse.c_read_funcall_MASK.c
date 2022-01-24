#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_11__ {TYPE_1__* ptr; int /*<<< orphan*/  params; } ;
struct TYPE_10__ {scalar_t__ kind; TYPE_8__* ty; int /*<<< orphan*/  fname; struct TYPE_10__* operand; } ;
struct TYPE_9__ {int /*<<< orphan*/  params; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 scalar_t__ AST_ADDR ; 
 scalar_t__ AST_FUNCDESG ; 
 TYPE_2__* FUNC0 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Node *FUNC3(Node *fp) {
    if (fp->kind == AST_ADDR && fp->operand->kind == AST_FUNCDESG) {
        Node *desg = fp->operand;
        Vector *args = FUNC2(desg->ty->params);
        return FUNC0(desg->ty, desg->fname, args);
    }
    Vector *args = FUNC2(fp->ty->ptr->params);
    return FUNC1(fp, args);
}