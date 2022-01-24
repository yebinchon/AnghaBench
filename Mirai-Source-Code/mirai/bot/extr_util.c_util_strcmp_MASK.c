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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (char*) ; 

BOOL FUNC1(char *str1, char *str2)
{
    int l1 = FUNC0(str1), l2 = FUNC0(str2);

    if (l1 != l2)
        return FALSE;

    while (l1--)
    {
        if (*str1++ != *str2++)
            return FALSE;
    }

    return TRUE;
}