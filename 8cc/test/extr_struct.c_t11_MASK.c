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
struct tag11 {int a; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 struct tag11 v11 ; 

__attribute__((used)) static void FUNC1() {
    struct tag11 *p = &v11;
    v11.a = 78;
    FUNC0(78, (*p).a);
    FUNC0(78, v11.a);
    FUNC0(78, p->a);
    p->a = 79;
    FUNC0(79, (*p).a);
    FUNC0(79, v11.a);
    FUNC0(79, p->a);
}