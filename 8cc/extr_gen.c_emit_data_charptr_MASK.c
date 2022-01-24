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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 () ; 
 char* FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(char *s, int depth) {
    char *label = FUNC2();
    FUNC0(".data %d", depth + 1);
    FUNC1(label);
    FUNC0(".string \"%s\"", FUNC3(s));
    FUNC0(".data %d", depth);
    FUNC0(".quad %s", label);
}