#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ kind; } ;
typedef  TYPE_2__ Type ;
struct TYPE_9__ {TYPE_1__* ty; int /*<<< orphan*/  args; } ;
struct TYPE_7__ {scalar_t__ kind; TYPE_2__* ptr; } ;
typedef  TYPE_3__ Node ;

/* Variables and functions */
 scalar_t__ KIND_PTR ; 
 scalar_t__ KIND_STRUCT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(Node *node) {
    Node *arg = FUNC3(node->args, 0);
    FUNC0(arg->ty->kind == KIND_PTR);
    Type *ty = arg->ty->ptr;
    if (ty->kind == KIND_STRUCT)
        FUNC1("mov $2, #eax");
    else if (FUNC2(ty))
        FUNC1("mov $1, #eax");
    else
        FUNC1("mov $0, #eax");
}