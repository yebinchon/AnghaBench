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
 int FUNC0 (char**) ; 
 char FUNC1 (char) ; 
 char** cmds ; 

__attribute__((used)) static int FUNC2(char k)
{
    int i;

    k = FUNC1(k);
    for (i = 0; i < FUNC0(cmds); i++)
        if (k == cmds[i][0])
            return i;
    return -1;
}