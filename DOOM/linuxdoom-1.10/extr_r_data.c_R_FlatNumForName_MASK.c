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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 
 int firstflat ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

int FUNC3 (char* name)
{
    int		i;
    char	namet[9];

    i = FUNC1 (name);

    if (i == -1)
    {
	namet[8] = 0;
	FUNC2 (namet, name,8);
	FUNC0 ("R_FlatNumForName: %s not found",namet);
    }
    return i - firstflat;
}