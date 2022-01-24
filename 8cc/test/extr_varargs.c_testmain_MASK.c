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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (double,double,double,double) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,double,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6() {
    FUNC0("varargs");
    FUNC1();
    FUNC3(1, 2, 3, 5, 8);
    FUNC2(1.0, 2.0, 4.0, 8.0);
    FUNC4("abc", 2.0, 4, "d", 5);
    FUNC5();
}