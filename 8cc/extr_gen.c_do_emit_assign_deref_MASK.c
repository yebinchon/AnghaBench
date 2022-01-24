#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;

/* Variables and functions */
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(Type *ty, int off) {
    SAVE;
    FUNC0("mov (#rsp), #rcx");
    char *reg = FUNC1(ty, 'c');
    if (off)
        FUNC0("mov #%s, %d(#rax)", reg, off);
    else
        FUNC0("mov #%s, (#rax)", reg);
    FUNC2("rax");
}