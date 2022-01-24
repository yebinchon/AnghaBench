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
struct TYPE_3__ {scalar_t__ els; scalar_t__ then; scalar_t__ cond; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 () ; 

__attribute__((used)) static void FUNC5(Node *node) {
    SAVE;
    FUNC0(node->cond);
    char *ne = FUNC4();
    FUNC1(ne);
    if (node->then)
        FUNC0(node->then);
    if (node->els) {
        char *end = FUNC4();
        FUNC2(end);
        FUNC3(ne);
        FUNC0(node->els);
        FUNC3(end);
    } else {
        FUNC3(ne);
    }
}