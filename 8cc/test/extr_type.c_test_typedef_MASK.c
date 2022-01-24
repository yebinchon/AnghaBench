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
    typedef int integer;
    integer a = 5;
    FUNC0(5, a);

    typedef int array[3];
    array b = { 1, 2, 3 };
    FUNC0(2, b[1]);

    typedef struct tag { int x; } strtype;
    strtype c;
    c.x = 5;
    FUNC0(5, c.x);

    typedef char x;
    {
        int x = 3;
        FUNC0(3, x);
    }
    {
        int a = sizeof(x), x = 5, c = sizeof(x);
        FUNC0(1, a);
        FUNC0(5, x);
        FUNC0(4, c);
    }
}