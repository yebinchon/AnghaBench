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
 int /*<<< orphan*/  FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1() {
    struct tag {
        int val;
        struct tag *next;
    };
    struct tag node1 = { 1, NULL };
    struct tag node2 = { 2, &node1 };
    struct tag node3 = { 3, &node2 };
    struct tag *p = &node3;
    FUNC0(3, p->val);
    FUNC0(2, p->next->val);
    FUNC0(1, p->next->next->val);
    p->next = p->next->next;
    FUNC0(1, p->next->val);
}