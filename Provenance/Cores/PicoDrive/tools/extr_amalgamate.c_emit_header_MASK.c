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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(FILE *f, const char *fname)
{
	char tmp[128] = "/*                                                            */";
	FUNC1(tmp + 3, fname, FUNC2(fname));
	FUNC0(f, "\n\n");
	FUNC0(f, "/**************************************************************/\n");
	FUNC0(f, "/**************************************************************/\n");
	FUNC0(f, "%s\n", tmp);
	FUNC0(f, "/**************************************************************/\n");
}