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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(Node *node) {
    FUNC7("r11");
    FUNC0(FUNC9(node->args) == 1);
    FUNC2(FUNC8(node->args));
    char *loop = FUNC5();
    char *end = FUNC5();
    FUNC1("mov #rbp, #r11");
    FUNC4(loop);
    FUNC1("test #rax, #rax");
    FUNC1("jz %s", end);
    FUNC1("mov (#r11), #r11");
    FUNC1("sub $1, #rax");
    FUNC3(loop);
    FUNC4(end);
    FUNC1("mov 8(#r11), #rax");
    FUNC6("r11");
}