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
typedef  int /*<<< orphan*/  x2 ;
typedef  int /*<<< orphan*/  x1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (char*,char*,int) ; 

__attribute__((used)) static void FUNC2() {
#ifdef __8cc__
#pragma disable_warning
#endif

    char x1[3] = { 1, 2, 3, 4, 5 };
    FUNC0(3, sizeof(x1));

    char x2[3] = "abcdefg";
    FUNC0(3, sizeof(x2));
    FUNC0(0, FUNC1("abc", x2, 3));

#ifdef __8cc__
#pragma disable_warning
#endif
}