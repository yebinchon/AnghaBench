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
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,int) ; 

__attribute__((used)) static void
FUNC5(const char *fn_name)
{
	char name[50] = "";

	thread_t thread_port = FUNC1(FUNC2());

	int pri = FUNC0(thread_port);

	FUNC4(name, sizeof(name), "%s at pri %2d", fn_name, pri);
	FUNC3(name);
}