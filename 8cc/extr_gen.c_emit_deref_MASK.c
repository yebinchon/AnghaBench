#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* ty; } ;
struct TYPE_6__ {TYPE_3__* operand; int /*<<< orphan*/  ty; } ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(Node *node) {
    SAVE;
    FUNC0(node->operand);
    FUNC1(node->operand->ty->ptr, "rax", 0);
    FUNC2(node->ty, node->operand->ty->ptr);
}