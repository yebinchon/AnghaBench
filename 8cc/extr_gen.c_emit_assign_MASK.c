#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  ty; } ;
struct TYPE_10__ {TYPE_1__* ty; } ;
struct TYPE_9__ {TYPE_3__* left; TYPE_4__* right; int /*<<< orphan*/  ty; } ;
struct TYPE_8__ {scalar_t__ kind; int size; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 scalar_t__ KIND_STRUCT ; 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC4(Node *node) {
    SAVE;
    if (node->left->ty->kind == KIND_STRUCT &&
        node->left->ty->size > 8) {
        FUNC0(node->left, node->right);
    } else {
        FUNC1(node->right);
        FUNC2(node->ty, node->right->ty);
        FUNC3(node->left);
    }
}