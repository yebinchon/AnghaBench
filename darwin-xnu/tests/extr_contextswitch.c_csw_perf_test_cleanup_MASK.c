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
 int /*<<< orphan*/  environ ; 
 int FUNC0 (int*,char* const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
    int spawn_ret, pid;
    char *const clpcctrl_args[] = {"/usr/local/bin/clpcctrl", "-d", NULL};
    spawn_ret = FUNC0(&pid, clpcctrl_args[0], NULL, NULL, clpcctrl_args, environ);
    FUNC1(pid, &spawn_ret, 0);
}