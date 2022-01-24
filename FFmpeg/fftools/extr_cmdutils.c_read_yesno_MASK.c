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
 int EOF ; 
 char FUNC0 (int) ; 
 int FUNC1 () ; 

int FUNC2(void)
{
    int c = FUNC1();
    int yesno = (FUNC0(c) == 'Y');

    while (c != '\n' && c != EOF)
        c = FUNC1();

    return yesno;
}