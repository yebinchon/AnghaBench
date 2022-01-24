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
struct TYPE_7__ {TYPE_2__* ty; } ;
struct TYPE_6__ {int kind; scalar_t__ usig; } ;
struct TYPE_5__ {TYPE_3__* left; TYPE_3__* right; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 int KIND_FLOAT ; 
 int KIND_LLONG ; 
 int KIND_LONG ; 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(char *inst, char *usiginst, Node *node) {
    SAVE;
    if (FUNC2(node->left->ty)) {
        FUNC1(node->left);
        FUNC6(0);
        FUNC1(node->right);
        FUNC4(1);
        if (node->left->ty->kind == KIND_FLOAT)
            FUNC0("ucomiss #xmm0, #xmm1");
        else
            FUNC0("ucomisd #xmm0, #xmm1");
    } else {
        FUNC1(node->left);
        FUNC5("rax");
        FUNC1(node->right);
        FUNC3("rcx");
        int kind = node->left->ty->kind;
        if (kind == KIND_LONG || kind == KIND_LLONG)
          FUNC0("cmp #rax, #rcx");
        else
          FUNC0("cmp #eax, #ecx");
    }
    if (FUNC2(node->left->ty) || node->left->ty->usig)
        FUNC0("%s #al", usiginst);
    else
        FUNC0("%s #al", inst);
    FUNC0("movzb #al, #eax");
}