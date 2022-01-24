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
struct TYPE_3__ {int /*<<< orphan*/  args; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  REGAREA_SIZE ; 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int numfp ; 
 int numgp ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(Node *node) {
    SAVE;
    FUNC0(FUNC6(node->args) == 1);
    FUNC2(FUNC5(node->args));
    FUNC4("rcx");
    FUNC1("movl $%d, (#rax)", numgp * 8);
    FUNC1("movl $%d, 4(#rax)", 48 + numfp * 16);
    FUNC1("lea %d(#rbp), #rcx", -REGAREA_SIZE);
    FUNC1("mov #rcx, 16(#rax)");
    FUNC3("rcx");
}