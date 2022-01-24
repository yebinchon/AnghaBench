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
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,double) ; 

__attribute__((used)) static char * FUNC3(gdouble drc)
{
    char *s_drc;
    if (drc < 0.99)
        s_drc = FUNC1(FUNC0("Off"));
    else
        s_drc = FUNC2("%.1f", drc);
    return s_drc;
}