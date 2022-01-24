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
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 

char *FUNC2(char *cfgfile)
{
    char *c = cfgfile;
    char *next;
    while((next = FUNC1(c, '/')))
    {
        c = next+1;
    }
    c = FUNC0(c);
    next = FUNC1(c, '.');
    if (next) *next = 0;
    return c;
}