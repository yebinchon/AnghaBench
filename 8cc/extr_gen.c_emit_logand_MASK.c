#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 () ; 

__attribute__((used)) static void FUNC4(Node *node) {
    SAVE;
    char *end = FUNC3();
    FUNC1(node->left);
    FUNC0("test #rax, #rax");
    FUNC0("mov $0, #rax");
    FUNC0("je %s", end);
    FUNC1(node->right);
    FUNC0("test #rax, #rax");
    FUNC0("mov $0, #rax");
    FUNC0("je %s", end);
    FUNC0("mov $1, #rax");
    FUNC2(end);
}