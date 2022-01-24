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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  PU_STATIC ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ demobuffer ; 
 scalar_t__ demoend ; 
 int /*<<< orphan*/  demoname ; 
 int demorecording ; 
 int myargc ; 
 int /*<<< orphan*/ * myargv ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int usergame ; 

void FUNC5 (char* name) 
{ 
    int             i; 
    int				maxsize;
	
    usergame = false; 
    FUNC4 (demoname, name); 
    FUNC3 (demoname, ".lmp"); 
    maxsize = 0x20000;
    i = FUNC0 ("-maxdemo");
    if (i && i<myargc-1)
	maxsize = FUNC2(myargv[i+1])*1024;
    demobuffer = FUNC1 (maxsize,PU_STATIC,NULL); 
    demoend = demobuffer + maxsize;
	
    demorecording = true; 
}