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
    union {
        int i;
        struct { char a:4; char b:4; char : 8; };
    } x = { 0 };
    x.i = 0;
    x.a = 2;
    x.b = 4;
    FUNC0(2, x.a);
    FUNC0(4, x.b);
    FUNC0(66, x.i);

    union {
        int i;
        struct { char a:4; char :0; char b:4; };
    } y = { 0 };
    y.a = 2;
    y.b = 4;
    FUNC0(2, y.a);
    FUNC0(4, y.b);
    FUNC0(1026, y.i);
}