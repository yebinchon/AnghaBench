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
typedef  int /*<<< orphan*/  Set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5() {
    Set *s = NULL;
    FUNC0(0, FUNC2(s, "abc"));
    s = FUNC1(s, "abc");
    s = FUNC1(s, "def");
    FUNC0(1, FUNC2(s, "abc"));
    FUNC0(1, FUNC2(s, "def"));
    FUNC0(0, FUNC2(s, "xyz"));
    Set *t = NULL;
    t = FUNC1(t, "abc");
    t = FUNC1(t, "DEF");
    FUNC0(1, FUNC2(FUNC4(s, t), "abc"));
    FUNC0(1, FUNC2(FUNC4(s, t), "def"));
    FUNC0(1, FUNC2(FUNC4(s, t), "DEF"));
    FUNC0(1, FUNC2(FUNC3(s, t), "abc"));
    FUNC0(0, FUNC2(FUNC3(s, t), "def"));
    FUNC0(0, FUNC2(FUNC3(s, t), "DEF"));
}