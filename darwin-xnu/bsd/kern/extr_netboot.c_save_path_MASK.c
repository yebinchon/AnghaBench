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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(char * * str_p, int * length_p, char * path)
{
    *length_p = FUNC2(path) + 1;
    *str_p = (char *)FUNC0(*length_p);
    FUNC1(*str_p, path, *length_p);
    return;
}