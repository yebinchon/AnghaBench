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
    struct { int a, b, c; short d; char f; } v1, v2;
    v1.a = 3;
    v1.b = 5;
    v1.c = 7;
    v1.d = 9;
    v1.f = 11;
    v2 = v1;
    FUNC0(3, v2.a);
    FUNC0(5, v2.b);
    FUNC0(7, v2.c);
    FUNC0(9, v2.d);
    FUNC0(11, v2.f);
}