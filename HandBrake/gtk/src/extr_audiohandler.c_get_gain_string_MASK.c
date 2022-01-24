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
typedef  double gdouble ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,...) ; 

__attribute__((used)) static char * FUNC2(gdouble gain)
{
    char *s_gain;
    if ( gain >= 21.0 )
        s_gain = FUNC1("*11*");
    else
        s_gain = FUNC1(FUNC0("%ddB"), (int)gain);
    return s_gain;
}