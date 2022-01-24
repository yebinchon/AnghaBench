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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char const*,char*,char*) ; 
 char* output ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const char* what)
{
 FUNC1(stderr,"%s: cannot %s %s: %s\n",progname,what,output,FUNC2(errno));
 FUNC0(EXIT_FAILURE);
}