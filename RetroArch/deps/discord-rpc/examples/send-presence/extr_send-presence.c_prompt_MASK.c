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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static int FUNC4(char* line, size_t size)
{
    int res;
    char* nl;
    FUNC2("\n> ");
    FUNC0(stdout);
    res = FUNC1(line, (int)size, stdin) ? 1 : 0;
    line[size - 1] = 0;
    nl = FUNC3(line, '\n');
    if (nl) {
        *nl = 0;
    }
    return res;
}