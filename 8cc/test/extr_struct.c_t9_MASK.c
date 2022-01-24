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
    struct tag9 { int a[3]; int b[3]; } x;
    x.a[0] = 73;
    FUNC0(73, x.a[0]);
    x.b[1] = 74;
    FUNC0(74, x.b[1]);
    FUNC0(74, x.a[4]);
}