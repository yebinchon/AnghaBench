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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t critical_leak_threshold ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  stdout ; 
 size_t warn_leak_threshold ; 

__attribute__((used)) static void FUNC3(size_t before_free, size_t after_free, const char *type)
{
    if (before_free <= after_free) {
        return;
    }
    size_t leaked = before_free - after_free;
    if (leaked <= warn_leak_threshold) {
        return;
    }

    FUNC2("MALLOC_CAP_%s %s leak: Before %u bytes free, After %u bytes free (delta %u)\n",
           type,
           leaked <= critical_leak_threshold ? "potential" : "critical",
           before_free, after_free, leaked);
    FUNC1(stdout);
    FUNC0(leaked <= critical_leak_threshold, "The test leaked too much memory");
}