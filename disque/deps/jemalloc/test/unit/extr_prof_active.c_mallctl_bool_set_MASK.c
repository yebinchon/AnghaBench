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
typedef  int /*<<< orphan*/  val_new ;
typedef  int /*<<< orphan*/  old ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int*,size_t*,int*,int) ; 

__attribute__((used)) static void
FUNC3(const char *name, bool old_expected, bool val_new,
    const char *func, int line)
{
	bool old;
	size_t sz;

	sz = sizeof(old);
	FUNC1(FUNC2(name, &old, &sz, &val_new, sizeof(val_new)), 0,
	    "%s():%d: Unexpected mallctl failure reading/writing %s", func,
	    line, name);
	FUNC0(old, old_expected, "%s():%d: Unexpected %s value", func,
	    line, name);
}