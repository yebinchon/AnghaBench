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
    struct cell { int val; struct cell *next; };
    struct cell v1 = { 5, NULL };
    struct cell v2 = { 6, &v1 };
    struct cell v3 = { 7, &v2 };
    struct cell *p = &v3;
    FUNC0(7, v3.val);
    FUNC0(7, p->val);
    FUNC0(6, p->next->val);
    FUNC0(5, p->next->next->val);

    p->val = 10;
    p->next->val = 11;
    p->next->next->val = 12;
    FUNC0(10, p->val);
    FUNC0(11, p->next->val);
    FUNC0(12, p->next->next->val);
}